import * as Control$dPromise from "../Control.Promise/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Record$dUnsafe$dUnion from "../Record.Unsafe.Union/index.js";
import * as Type$dProxy from "../Type.Proxy/index.js";
import {animatePresenceImpl, layoutGroupImpl, lazyMotionImpl, morphImpl, motionConfigImpl, reorderGroupImpl, reorderItemImpl, startImpl, stopImpl} from "./foreign.js";
const morphKeyString = {toMorphKey: x => x};
const morphKeyProxy = dictIsSymbol => ({toMorphKey: v => dictIsSymbol.reflectSymbol(Type$dProxy.Proxy)});
const morphKeyInt = {toMorphKey: Data$dShow.showIntImpl};
const withMotion = () => () => () => old => $$new => Record$dUnsafe$dUnion.unsafeUnionFn(old, $$new);
const toMorphKey = dict => dict.toMorphKey;
const morphKeyTuple = dictMorphKey => dictMorphKey1 => ({toMorphKey: v => dictMorphKey.toMorphKey(v._1) + "-" + dictMorphKey1.toMorphKey(v._2)});
const stopAnimation = stopImpl;
const startAnimationVariant = arg => controls => Effect$dAff._bind(Effect$dAff._liftEffect(startImpl(arg)(controls)))(Control$dPromise.toAff$p(Control$dPromise.coerce));
const startAnimationDynamic = arg => controls => Effect$dAff._bind(Effect$dAff._liftEffect(startImpl(arg)(controls)))(Control$dPromise.toAff$p(Control$dPromise.coerce));
const startAnimation = arg => controls => Effect$dAff._bind(Effect$dAff._liftEffect(startImpl(arg)(controls)))(Control$dPromise.toAff$p(Control$dPromise.coerce));
const reorderItem = () => () => reorderItemImpl;
const reorderGroup = () => () => reorderGroupImpl;
const motionConfig = () => () => motionConfigImpl;
const motion = () => () => () => b => a => Record$dUnsafe$dUnion.unsafeUnionFn(a, b);
const morph = dictMorphKey => key => jsx => morphImpl(dictMorphKey.toMorphKey(key))(jsx);
const lazyMotion = () => () => lazyMotionImpl;
const layoutGroup = () => () => layoutGroupImpl;
const animatePresence = () => () => animatePresenceImpl;
export {
  animatePresence,
  layoutGroup,
  lazyMotion,
  morph,
  morphKeyInt,
  morphKeyProxy,
  morphKeyString,
  morphKeyTuple,
  motion,
  motionConfig,
  reorderGroup,
  reorderItem,
  startAnimation,
  startAnimationDynamic,
  startAnimationVariant,
  stopAnimation,
  toMorphKey,
  withMotion
};
export * from "./foreign.js";
