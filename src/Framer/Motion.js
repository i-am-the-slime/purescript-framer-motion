import { AnimatePresence } from "framer-motion"

export const animatePresenceImpl = AnimatePresence

export const startImpl = args => controls => () => controls.start(args)
export const stopImpl = controls  => () => controls.stop()