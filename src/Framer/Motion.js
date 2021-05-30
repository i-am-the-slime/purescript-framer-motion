const framerMotion = require("framer-motion")

exports.animatePresenceImpl = framerMotion.AnimatePresence

exports.animateSharedLayoutImpl = framerMotion.AnimateSharedLayout

exports.startImpl = (args) => (controls) => controls.start(args)
exports.stopImpl = (controls) => controls.stop