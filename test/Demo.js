import { domAnimation, motion, useScroll, Reorder } from "motion/react"
import React from "react"

export { domAnimation }

export const useScrollRawImpl = (opts) => useScroll(opts)

export const motionDivWithDragControls = controls => children =>
  React.createElement(motion.div, {
    drag: true,
    dragControls: controls,
    dragListener: false,
    style: {
      borderRadius: "12px",
      background: "linear-gradient(135deg, #f093fb, #f5576c)",
      display: "inline-block",
    }
  }, ...children)

export const merge2 = a => b => Object.assign({}, a, b)

export const jsRound = n => Math.round(n)

export const setTextContent = ref => text => () => {
  if (ref.current) ref.current.textContent = text
}

export const reorderList = ({ items, onReorder }) =>
  React.createElement(Reorder.Group, {
    axis: "y",
    values: items,
    onReorder: (newOrder) => onReorder(newOrder),
    style: { listStyle: "none", padding: 0, margin: 0 },
  },
    items.map(item =>
      React.createElement(Reorder.Item, {
        key: item,
        value: item,
        style: {
          padding: "12px 16px",
          marginBottom: "4px",
          borderRadius: "8px",
          background: "white",
          border: "1px solid #e0e0e8",
          cursor: "grab",
          display: "flex",
          alignItems: "center",
          gap: "8px",
          userSelect: "none",
        },
      },
        React.createElement("span", { style: { color: "#aaa" } }, "⠿"),
        item
      )
    )
  )
