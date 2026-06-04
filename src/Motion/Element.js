// The minimal-components entry: `div`, `span`, … carry no feature engine, so
// importing them keeps the eager bundle off the full `motion/react` index. They
// need a `LazyMotion` ancestor supplying features (domAnimation / domMax).
import * as m from "motion/react-m"
import React from "react"

export const createMotionElement = (tag) => (props) => (children) => {
  if (!Array.isArray(children)) return React.createElement(m[tag], props, children)
  return React.createElement(m[tag], props, ...children)
}

export const createMotionElement_ = (tag) => (props) => {
  return React.createElement(m[tag], props)
}

export function custom(component) {
  return () => {
    return m.create(component)
  }
}
