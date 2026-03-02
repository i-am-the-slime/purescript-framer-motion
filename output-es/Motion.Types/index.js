import * as Effect$dUncurried from "../Effect.Uncurried/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import {dragControlsCancel, dragControlsStart, dragControlsStop, infinity, willChangeAdd} from "./foreign.js";
const $MakeVariantLabel = () => ({tag: "MakeVariantLabel"});
const $Target = () => ({tag: "Target"});
const VariantLabel = x => x;
const Target = /* #__PURE__ */ $Target();
const MakeVariantLabel = /* #__PURE__ */ $MakeVariantLabel();
const AnimateSharedLayoutType = x => x;
const mappingWithIndexMakeVaria = dictIsSymbol => ({mappingWithIndex: v => prop$p => v1 => dictIsSymbol.reflectSymbol(prop$p)});
const effectFnMakerFunctionFunc = {toEffectFn: Effect$dUncurried.mkEffectFn2};
const effectFnMakerFunctionEffe = {toEffectFn: Effect$dUncurried.mkEffectFn1};
const whileTap = () => Unsafe$dCoerce.unsafeCoerce;
const whileInView = () => Unsafe$dCoerce.unsafeCoerce;
const whileHover = () => Unsafe$dCoerce.unsafeCoerce;
const whileFocus = () => Unsafe$dCoerce.unsafeCoerce;
const whileDrag = () => Unsafe$dCoerce.unsafeCoerce;
const variantsFromObject = x => x;
const variants = x => x;
const transition = x => x;
const toEffectFn = dict => dict.toEffectFn;
const $$switch = "switch";
const prop = () => Unsafe$dCoerce.unsafeCoerce;
const pan = () => Unsafe$dCoerce.unsafeCoerce;
const onViewportBoxUpdate = x => ($0, $1) => x($0)($1)();
const onTapStart = x => ($0, $1) => x($0)($1)();
const onTapEnd = x => ($0, $1) => x($0)($1)();
const onTapCancel = fn2 => ($0, $1) => fn2($0)($1)();
const onTap = fn2 => ($0, $1) => fn2($0)($1)();
const onPanStart = x => ($0, $1) => x($0)($1)();
const onPanEnd = x => ($0, $1) => x($0)($1)();
const onPan = fn2 => ($0, $1) => fn2($0)($1)();
const onLayoutAnimationComplete = Unsafe$dCoerce.unsafeCoerce;
const onHoverStart = x => ($0, $1) => x($0)($1)();
const onHoverEnd = x => ($0, $1) => x($0)($1)();
const onDragStart = x => ($0, $1) => x($0)($1)();
const onDragEnd = x => ($0, $1) => x($0)($1)();
const onDrag = fn2 => ($0, $1) => fn2($0)($1)();
const onAnimationStart = Unsafe$dCoerce.unsafeCoerce;
const onAnimationComplete = x => $0 => x($0)();
const makeVariantLabels = dictHMapWithIndex => dictHMapWithIndex.hmapWithIndex(MakeVariantLabel);
const layoutId = () => Unsafe$dCoerce.unsafeCoerce;
const layout = () => Unsafe$dCoerce.unsafeCoerce;
const initial = () => Unsafe$dCoerce.unsafeCoerce;
const exit = () => Unsafe$dCoerce.unsafeCoerce;
const dragPropagation = () => Unsafe$dCoerce.unsafeCoerce;
const dragMomentum = () => Unsafe$dCoerce.unsafeCoerce;
const dragElasticBoundingBox = () => x => x;
const dragElastic = () => Unsafe$dCoerce.unsafeCoerce;
const dragConstraintsBoundingBox = () => x => x;
const dragConstraints = () => Unsafe$dCoerce.unsafeCoerce;
const drag = () => Unsafe$dCoerce.unsafeCoerce;
const customProp = Unsafe$dCoerce.unsafeCoerce;
const crossfade = "crossfade";
const callback = () => dictEffectFnMaker => x => dictEffectFnMaker.toEffectFn(x);
const boundingBox2D = () => Unsafe$dCoerce.unsafeCoerce;
const animate = () => Unsafe$dCoerce.unsafeCoerce;
export {
  $MakeVariantLabel,
  $Target,
  AnimateSharedLayoutType,
  MakeVariantLabel,
  Target,
  VariantLabel,
  animate,
  boundingBox2D,
  callback,
  crossfade,
  customProp,
  drag,
  dragConstraints,
  dragConstraintsBoundingBox,
  dragElastic,
  dragElasticBoundingBox,
  dragMomentum,
  dragPropagation,
  effectFnMakerFunctionEffe,
  effectFnMakerFunctionFunc,
  exit,
  initial,
  layout,
  layoutId,
  makeVariantLabels,
  mappingWithIndexMakeVaria,
  onAnimationComplete,
  onAnimationStart,
  onDrag,
  onDragEnd,
  onDragStart,
  onHoverEnd,
  onHoverStart,
  onLayoutAnimationComplete,
  onPan,
  onPanEnd,
  onPanStart,
  onTap,
  onTapCancel,
  onTapEnd,
  onTapStart,
  onViewportBoxUpdate,
  pan,
  prop,
  $$switch as switch,
  toEffectFn,
  transition,
  variants,
  variantsFromObject,
  whileDrag,
  whileFocus,
  whileHover,
  whileInView,
  whileTap
};
export * from "./foreign.js";
