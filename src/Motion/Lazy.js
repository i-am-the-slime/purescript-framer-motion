import { LazyMotion } from "motion/react"
import React from "react"

const mkComponent = (C) => (props) => (children) => {
  if (!Array.isArray(children)) return React.createElement(C, props, children)
  return React.createElement(C, props, ...children)
}

export const lazyMotionImpl = mkComponent(LazyMotion)

// domAnimation is the tree-shaken animation subset (no layout/drag), imported
// statically so it needs no async round-trip.
export { domAnimation } from "motion/react"
