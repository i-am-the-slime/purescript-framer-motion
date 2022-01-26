import { AnimatePresence } from "framer-motion"

export const animatePresenceImpl = AnimatePresence

export function startImpl(args) { return (controls) => controls.start(args)}
export function stopImpl(controls) { return controls.stop}