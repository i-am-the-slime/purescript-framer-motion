import React from "react";

export const unsafeWithChildrenImpl = (children, props) => { props.children = children; return props }
export const modifyIfDefinedImpl = (key, fn, obj) => {
    if (!obj.hasOwnProperty(key)) return obj
    return {...obj, [key]: fn(obj[key])}
}
export const createElementImpl = (name, props, children) => {
    if (typeof children === undefined || children == null || children.length === 0) return React.createElement(name, props)
    if (!Array.isArray(children)) return React.createElement(name, props, children)
    return React.createElement(name, props, ...children)
}

export const createElementNoKidsImpl = React.createElement

export const mergeStyles = (styles) => Object.assign.apply(null, [{}].concat(styles))
