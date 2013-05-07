from django import template
from cms.templatetags.cms_tags import _get_cache_key, get_site_id, _clean_key, _get_page_by_untyped_arg, _restore_sekizai
from classytags.arguments import Argument, MultiValueArgument
from classytags.core import Options, Tag
from classytags.helpers import InclusionTag, AsTag
from classytags.parser import Parser
from cms.models import Page, Placeholder as PlaceholderModel
from cms.plugin_rendering import render_placeholder
from cms.plugins.utils import get_plugins, assign_plugins
from cms.utils import get_language_from_request, get_cms_setting
from cms.utils.page_resolver import get_page_queryset, use_draft
from cms.utils.placeholder import validate_placeholder_name
from django import template
from django.conf import settings
from django.contrib.sites.models import Site
from django.core.cache import cache
from django.core.mail import mail_managers
from django.utils.html import escape
from django.utils.safestring import mark_safe
from django.utils.translation import ugettext_lazy as _, get_language
import re
from sekizai.helpers import Watcher, get_varname
register = template.Library()

TAG_RE = re.compile(r'<[^>]+>')

def remove_tags(text):
    return TAG_RE.sub('', text)


def cms_navigation():
    cms_pages = Page.objects.filter(in_navigation=True, published=True)
    return {'cms_pages': cms_pages}

register.inclusion_tag('main-navigation.html')(cms_navigation)


def _show_content_for_page(context, placeholder_name, page_lookup, lang=None,
                               site=None, cache_result=True, content_max_length=None):
    """
    Shows the content of a page as content of placeholder with name 'content' and given lookup
    arguments in the given language.
    This is useful if you want to have some more or less static content that is
    shared among many pages, such as a footer.

    See _get_page_by_untyped_arg() for detailed information on the allowed types
    and their interpretation for the page_lookup argument.
    """
    validate_placeholder_name(placeholder_name)

    request = context.get('request', False)
    site_id = get_site_id(site)

    if not request:
        return {'content': ''}
    if lang is None:
        lang = get_language_from_request(request)

    if cache_result:
        base_key = _get_cache_key('_show_content_for_page', page_lookup, lang, site_id)
        cache_key = _clean_key('%s_placeholder:%s' % (base_key, placeholder_name))
        cached_value = cache.get(cache_key)
        if isinstance(cached_value, dict): # new style
            _restore_sekizai(context, cached_value['sekizai'])
            return {'content': mark_safe(cached_value['content'])}
        elif isinstance(cached_value, basestring): # old style
            return {'content': mark_safe(cached_value)}

    page = _get_page_by_untyped_arg(page_lookup, request, site_id)
    if not page:
        return {'content': ''}
    try:
        placeholder = page.placeholders.get(slot=placeholder_name)
    except PlaceholderModel.DoesNotExist:
        if settings.DEBUG:
            raise
        return {'content': ''}
    watcher = Watcher(context)
    content = render_placeholder(placeholder, context, placeholder_name)
     
    if content_max_length:
        content = remove_tags(content)[:content_max_length]
     
    changes = watcher.get_changes()
    if cache_result:
        cache.set(cache_key, {'content': content, 'sekizai': changes}, get_cms_setting('CACHE_DURATIONS')['content'])

    if content:
        return {'content': mark_safe(content)}
    return {'content': ''}


class GetPageContentById(InclusionTag):
    template = 'cms/content.html'
    name = 'get_page_content_by_id'

    options = Options(
        Argument('placeholder_name'),
        Argument('reverse_id'),
        Argument('lang', required=False, default=None),
        Argument('site', required=False, default=None),
        Argument('content_max_length', required=False, default=None),
    )

    def get_context(self, *args, **kwargs):
        return _show_content_for_page(**self.get_kwargs(*args, **kwargs))

    def get_kwargs(self, context, placeholder_name, reverse_id, lang, site, content_max_length):
        return {
            'context': context,
            'placeholder_name': placeholder_name,
            'page_lookup': reverse_id,
            'lang': lang,
            'site': site,
            'content_max_length': content_max_length
        }


register.tag(GetPageContentById)
register.tag('get_page_content', GetPageContentById)