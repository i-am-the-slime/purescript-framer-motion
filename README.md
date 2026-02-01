# purescript-react-motion

PureScript bindings for [Motion](https://motion.dev) (formerly Framer Motion) - a production-ready animation library for React.

## Installation

```bash
# Install PureScript package
spago install react-motion

# Install npm dependencies
npm install motion@^12.29.2 react@^18.2.0 react-dom@^18.2.0
```

## Quick Start

```purescript
module Main where

import Prelude
import Framer.Motion.MotionComponent as Motion
import Framer.Motion.Types (animate, initial, whileHover, whileInView)
import React.Basic.DOM as R
import React.Basic.Hooks (element)

myComponent = element Motion.div
  { initial: initial { opacity: 0.0, y: 50.0 }
  , animate: animate { opacity: 1.0, y: 0.0 }
  , whileHover: whileHover { scale: 1.05 }
  , whileInView: whileInView { opacity: 1.0 }
  , children: [ R.text "Animated content!" ]
  }
```

## Features

### ✨ New in v2.0 (Motion Migration)

- **Scroll animations**: `whileInView` prop and `useInView` hook
- **Focus animations**: `whileFocus` prop  
- **Manual controls**: `useAnimate` hook with automatic scoping
- **Enhanced scroll tracking**: `useScroll` with container and target options
- **React 18**: Updated to latest React and Motion
- **Better performance**: Motion's hybrid animation engine

### Core Features

- 🎨 **Declarative animations** - Animate with simple props
- 🎯 **Gesture support** - Hover, tap, drag, pan out of the box
- 📜 **Scroll animations** - Both scroll-triggered and scroll-linked
- 🔄 **Layout animations** - Smooth layout transitions
- 🚪 **Exit animations** - AnimatePresence component
- 🎭 **Variants** - Orchestrate complex animations
- 🪝 **Hooks** - useAnimation, useScroll, useInView, useAnimate
- 🎮 **MotionValues** - Composable animation values

## Examples

### Basic Animation

```purescript
import Framer.Motion.MotionComponent as Motion
import Framer.Motion.Types (animate, initial, transition)

fadeIn = element Motion.div
  { initial: initial { opacity: 0.0 }
  , animate: animate { opacity: 1.0 }
  , transition: transition { duration: 0.5 }
  , children: [ R.text "Fades in" ]
  }
```

### Scroll-Triggered Animation

```purescript
scrollAnimation = element Motion.div
  { initial: initial { opacity: 0.0, y: 100.0 }
  , whileInView: whileInView { opacity: 1.0, y: 0.0 }
  , children: [ R.text "Animates when scrolled into view" ]
  }
```

### Gestures

```purescript
interactive = element Motion.button
  { whileHover: whileHover { scale: 1.1 }
  , whileTap: whileTap { scale: 0.95 }
  , drag: drag true
  , dragConstraints: dragConstraintsBoundingBox 
      { left: -100.0, right: 100.0, top: -100.0, bottom: 100.0 }
  , children: [ R.text "Drag me!" ]
  }
```

### Using Hooks

```purescript
import Framer.Motion.Hook (useInView)

myComponent = React.component "MyComponent" \props -> React.do
  ref <- React.useRef null
  isInView <- useInView ref Nothing
  
  pure $ element Motion.div
    { ref: ref
    , style: { opacity: if isInView then 1.0 else 0.0 }
    , children: [ R.text "Visible when in view" ]
    }
```

## API

### Components

- `motion.div`, `motion.button`, `motion.span`, etc. - Motion-enhanced DOM elements
- `motion.svg`, `motion.path`, `motion.g`, etc. - Motion-enhanced SVG elements  
- `animatePresence` - Wrapper for exit animations

### Props

- `animate` - Target animation state
- `initial` - Initial animation state
- `exit` - Exit animation state
- `transition` - Animation timing
- `variants` - Named animation states
- `whileHover` - Hover state
- `whileTap` - Tap state
- `whileDrag` - Drag state
- `whileInView` - **NEW**: Scroll into view state
- `whileFocus` - **NEW**: Focus state
- `layout` - Enable layout animations
- `drag` - Enable dragging
- Various event handlers (`onHoverStart`, `onDragEnd`, etc.)

### Hooks

- `useAnimation` - Animation controls
- `useViewportScroll` - Page scroll values
- `useScroll` - **NEW**: Enhanced scroll tracking with options
- `useInView` - **NEW**: Viewport intersection detection
- `useAnimate` - **NEW**: Manual animation controls
- `useTransform` - Transform motion values
- `useSpring` - Spring physics
- `useMotionValue` - Create motion values

## Migration from v1.x

If you're upgrading from the old `framer-motion` bindings:

1. **Update npm packages**:
   ```bash
   npm uninstall framer-motion
   npm install motion@^12.29.2 react@^18.2.0 react-dom@^18.2.0
   ```

2. **No PureScript code changes required!** All your existing code will continue to work.

3. **Start using new features** like `whileInView` for scroll animations.

See [CHANGELOG.md](./CHANGELOG.md) for complete migration details.

## Documentation

- [Motion Official Docs](https://motion.dev/docs)
- [API Reference](https://motion.dev/docs/react)  
- [Examples](https://motion.dev/examples)

## License

MIT

## Contributing

Issues and PRs welcome!
