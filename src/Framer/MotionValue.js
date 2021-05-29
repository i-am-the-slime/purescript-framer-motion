const framerMotion = require("framer-motion")

exports.useMotionValueImpl = framerMotion.useMotionValue
exports.get = mv => () => { return mv.get() }
exports.setImpl = v => render => mv => () => {
    mv.set(v, render)
}
exports.isAnimating = mv => () => { return mv.isAnimating() }
exports.stop = mv => () => { return mv.stop() }
exports.onChangeImpl = callback => mv => { return () => mv.onChange(callback); }
exports.animateImpl = framerMotion.animate
exports.stopAnimation = (playbackControls) => playbackControls.stop