function hasBorderRadius() {
    var elem = document.documentElement;
    var style = element.style;
    if (element) {
        return typeof style.borderRadius == "string" ||
        typeof style.MozBorderRadius == "string" ||
        typeof style.WebkitBorderRadius == "string" ||
        typeof style.KhtmlBorderRadius == "string";
    }
    return null;
}