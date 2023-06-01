import { AnimatePresence } from "framer-motion"

export const animatePresenceImpl = AnimatePresence

export function startImpl() { return args =>(controls) => controls.start(args)}
export function stopImpl() { return controls => controls.stop()}