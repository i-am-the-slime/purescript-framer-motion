import { AnimatePresence, AnimateSharedLayout } from "framer-motion"

export const animatePresenceImpl = AnimatePresence

export const animateSharedLayoutImpl = AnimateSharedLayout

export function startImpl(args) { return (controls) => controls.start(args)}
export function stopImpl(controls) { return controls.stop}