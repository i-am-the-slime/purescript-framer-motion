import { motion } from "motion/react"
import React from "react"

export const createMotionElement = (tag) => (props) => (children) => {
  if (!Array.isArray(children)) return React.createElement(motion[tag], props, children)
  return React.createElement(motion[tag], props, ...children)
}

export const createMotionElement_ = (tag) => (props) => {
  return React.createElement(motion[tag], props)
}

export function custom(component) {
  return () => {
    return motion(component)
  }
}
