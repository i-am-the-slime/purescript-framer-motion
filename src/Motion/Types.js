export const infinity = Infinity

// DragControls methods
export const dragControlsStart = dc => event => () => dc.start(event)
export const dragControlsCancel = dc => () => dc.cancel()
export const dragControlsStop = dc => () => dc.stop()

// WillChange methods
export const willChangeAdd = wc => name => () => wc.add(name)

