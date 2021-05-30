const framerMotion = require("framer-motion")
const React = require("react");
const createElement = React.createElement;

function _extends() { _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; }; return _extends.apply(this, arguments); }

exports.motionComponentImpl = (str) => {
    const html = ["a", "abbr", "address", "area", "article", "aside", "audio", "b", "base", "bdi", "bdo", "big", "blockquote", "body", "br", "button", "canvas", "caption", "cite", "code", "col", "colgroup", "data", "datalist", "dd", "del", "details", "dfn", "dialog", "div", "dl", "dt", "em", "embed", "fieldset", "figcaption", "figure", "footer", "form", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "i", "iframe", "img", "input", "ins", "kbd", "keygen", "label", "legend", "li", "link", "main", "map", "mark", "menu", "menuitem", "meta", "meter", "nav", "noscript", "object", "ol", "optgroup", "option", "output", "p", "param", "picture", "pre", "progress", "q", "rp", "rt", "ruby", "s", "samp", "script", "section", "select", "small", "source", "span", "strong", "style", "sub", "summary", "sup", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "time", "title", "tr", "track", "u", "ul", "var", "video", "wbr", "webview"]
    const svg = ["animate", "circle", "clipPath", "defs", "desc", "ellipse", "feBlend", "feColorMatrix", "feComponentTransfer", "feComposite", "feConvolveMatrix", "feDiffuseLighting", "feDisplacementMap", "feDistantLight", "feDropShadow", "feFlood", "feFuncA", "feFuncB", "feFuncG", "feFuncR", "feGaussianBlur", "feImage", "feMerge", "feMergeNode", "feMorphology", "feOffset", "fePointLight", "feSpecularLighting", "feSpotLight", "feTile", "feTurbulence", "filter", "foreignObject", "g", "image", "line", "linearGradient", "marker", "mask", "metadata", "path", "pattern", "polygon", "polyline", "radialGradient", "rect", "stop", "svg", "switch", "symbol", "text", "textPath", "tspan", "use", "view"]
    if (html.indexOf(str) === -1 && svg.indexOf(str) === -1) {
        console.error("Tried to use non-existing motion component " + str)
    }
    const flattenDataProp = (props, ref) => {
        var data = null;
        if (props._data != null) {
            data = { _data: undefined };
            Object.entries(props._data).forEach(function (entry) {
                data["data-" + entry[0]] = entry[1];
            });
        }
        var aria = null;
        if (props._aria != null) {
            aria = { _aria: undefined };
            Object.entries(props._aria).forEach(function (entry) {
                aria["aria-" + entry[0]] = entry[1];
            });
        }
        return Object.assign({ ref }, props, data, aria);
    };
    const element = (component) => (props) =>
        Array.isArray(props.children)
            ? createElement.apply(null, [component, props].concat(props.children))
            : createElement(component, props);
    return React.forwardRef((props, ref) => {
        return element(framerMotion.motion[str])(flattenDataProp(props, ref))
    })
}

exports.custom = (component) => () => {
    return framerMotion.motion(component)
}