import { domAnimation } from "motion/react"

export { domAnimation }

export const merge2 = a => b => Object.assign({}, a, b)

export const jsRound = n => Math.round(n)

export const setTextContent = ref => text => () => {
  if (ref.current) ref.current.textContent = text
}
