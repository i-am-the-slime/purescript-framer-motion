# Changelog

## v2.0.0 (Motion Migration)

### Breaking Changes

- **Package renamed**: `framer-motion` → `motion` 
- **Import path changed**: All imports now from `"motion/react"` instead of `"framer-motion"`
- **React requirement**: Now requires React 18.2+
- **useViewportScroll**: Still works as before, but is now an alias for `useScroll()` with no arguments
- **useAnimation**: Now uses `useAnimationControls` under the hood

### New Features

#### New Props
- **`whileInView`**: Animate elements when they scroll into view
  ```purescript
  whileInView { opacity: 1.0, scale: 1.0 }
  ```
- **`whileFocus`**: Animate elements when they receive focus
  ```purescript
  whileFocus { scale: 1.05 }
  ```

#### New Hooks  
- **`useInView`**: Detect when an element enters/leaves the viewport
  ```purescript
  isInView <- useInView elementRef (Just options)
  ```
- **`useAnimate`**: Manual animation controls with automatic scoping and cleanup
  ```purescript
  { scope, animate } <- useAnimate
  ```
- **`useScroll`**: Enhanced scroll tracking (backwards compatible as `useViewportScroll`)
  - Track page scroll (default)
  - Track element scroll with `container` option
  - Track element position with `target` option

### Improvements

- Updated to Motion 12.29.2 (latest stable)
- All existing functionality preserved and working
- Comprehensive test coverage with react-testing-library
- Better performance with Motion's hybrid engine

### Migration Guide

1. Update dependencies:
   ```bash
   npm install motion@^12.29.2 react@^18.2.0 react-dom@^18.2.0
   ```

2. No PureScript code changes required! All existing code continues to work.

3. (Optional) Start using new features like `whileInView` and `useInView` for scroll animations.
