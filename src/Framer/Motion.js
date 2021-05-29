const framerMotion = require("framer-motion")
const React = require("react")
const Emotion = require("@emotion/react")

exports.animatePresenceImpl = framerMotion.AnimatePresence

exports.animateSharedLayoutImpl = framerMotion.AnimateSharedLayout

const flattenDataProp = (props) => {
    let data = null;
    if (props._data != null) {
        data = { _data: undefined };
        Object.entries(props._data).forEach(function (entry) {
            data["data-" + entry[0]] = entry[1];
        });
    }
    let aria = null;
    if (props._aria != null) {
        aria = { _aria: undefined };
        Object.entries(props._aria).forEach(function (entry) {
            aria["aria-" + entry[0]] = entry[1];
        });
    }
    if (data == null && aria == null) {
        return props
    } else if (aria == null) {
        return Object.assign({}, props, data);
    } else if (data == null) {
        return Object.assign({}, props, aria)
    } else {
        return Object.assign({}, props, data, aria)
    }
};

exports.motionElement_ = (component, props, areChildrenDynamic) => {
    const args = [component, flattenDataProp(props)];
    // const c = React.forwardRef((props, ref) =>
    //  createElement(el)(flattenDataProp(props, ref))
    // );
    return React.createElement.apply(
        null,
        areChildrenDynamic || props.children == null
            ? args
            : args.concat(props.children)
    );
};

exports.motionElementKeyed_ = (component, props) =>
    exports.motionElement_(component, props, true);


exports.styledMotionElement_ = (component, props, areChildrenDynamic) => {
    const args = [component, flattenDataProp(props)];
    // const c = React.forwardRef((props, ref) =>
    //  createElement(el)(flattenDataProp(props, ref))
    // );
    return Emotion.jsx.apply(
        null,
        areChildrenDynamic || props.children == null
            ? args
            : args.concat(props.children)
    );
};

exports.styledMotionElementKeyed_ = (component, props) =>
    exports.styledMotionElement_(component, props, true);

exports.startImpl = (args) => (controls) => controls.start(args)
exports.stopImpl = (controls) => controls.stop