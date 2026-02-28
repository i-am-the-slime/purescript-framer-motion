import { domAnimation, motion, useScroll } from "motion/react"
import React from "react"

export { domAnimation }

export const useScrollRawImpl = (opts) => useScroll(opts)

export const motionDivWithDragControls = controls => children =>
  React.createElement(motion.div, {
    drag: true,
    dragControls: controls,
    dragListener: false,
    style: {
      width: "80px",
      height: "80px",
      borderRadius: "12px",
      background: "linear-gradient(135deg, #f093fb, #f5576c)",
    }
  }, ...children)

export const merge2 = a => b => Object.assign({}, a, b)

export const jsRound = n => Math.round(n)

export const setTextContent = ref => text => () => {
  if (ref.current) ref.current.textContent = text
}
