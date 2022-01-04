import { motion } from "framer-motion"
import { createElement as _createElement, forwardRef } from "react"
const createElement = _createElement

const flattenDataProp = (props, ref) => {
  var data = null
  if (props._data != null) {
    data = { _data: undefined }
    Object.entries(props._data).forEach(function (entry) {
      data["data-" + entry[0]] = entry[1]
    })
  }
  var aria = null
  if (props._aria != null) {
    aria = { _aria: undefined }
    Object.entries(props._aria).forEach(function (entry) {
      aria["aria-" + entry[0]] = entry[1]
    })
  }
  return Object.assign({ ref }, props, data, aria)
}

export const mkMotionComponentImpl = (str) => () => {
  if (html.indexOf(str) === -1 && svg.indexOf(str) === -1) {
    console.error("Tried to use non-existing motion component " + str)
  }
  const element = (component) => (props) =>
    Array.isArray(props.children)
      ? createElement.apply(null, [component, props].concat(props.children))
      : createElement(component, props)
  return forwardRef((props, ref) => {
    return element(motion[str])(flattenDataProp(props, ref))
  })
}

export function custom(component) {
  return () => {
    return motion(component)
  }
}
