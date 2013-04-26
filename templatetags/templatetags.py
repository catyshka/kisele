from django import template

register = template.Library()

# @register.simple_tag
# def test(test):
#     return ""


def cms_navigation():
    cms_pages = Page.objects.filter(in_navigation=True, published=True)
    return {'cms_pages': cms_pages}

register.inclusion_tag('main-navigation.html')(cms_navigation)