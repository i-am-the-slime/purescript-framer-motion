// | Compile-time examples ported from the Motion docs source code.
// | These verify that the PureScript bindings type-check against
// | the real API patterns found in motiondivision/motion.
import * as $runtime from "../runtime.js";
import * as Data$dFunctor from "../Data.Functor/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import * as Data$dOrd from "../Data.Ord/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Effect$dConsole from "../Effect.Console/index.js";
import * as Literals$dUndefined from "../Literals.Undefined/index.js";
import * as Motion from "../Motion/index.js";
import * as Motion$dElement from "../Motion.Element/index.js";
import * as Motion$dHook from "../Motion.Hook/index.js";
import * as Motion$dTypes from "../Motion.Types/index.js";
import * as Motion$dValue from "../Motion.Value/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import * as React$dBasic$dDOM$dGenerated from "../React.Basic.DOM.Generated/index.js";
import * as React$dBasic$dHooks from "../React.Basic.Hooks/index.js";
import * as React$dBasic$dHooks$dInternal from "../React.Basic.Hooks.Internal/index.js";
import * as Type$dEquality from "../Type.Equality/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
const pure1 = /* #__PURE__ */ (() => React$dBasic$dHooks$dInternal.applicativeRender(Type$dEquality.refl).pure)();
const div = /* #__PURE__ */ Motion$dElement.createMotionElement("div");
const div2 = /* #__PURE__ */ React$dBasic.element(React$dBasic$dDOM$dGenerated._div$p);
const min = x => y => {
  const v = Data$dOrd.ordNumber.compare(x)(y);
  if (v === "LT") { return x; }
  if (v === "EQ") { return x; }
  if (v === "GT") { return y; }
  $runtime.fail();
};
const mkWillChangeExample = /* #__PURE__ */ React$dBasic$dHooks.component("WillChangeExample")(v => () => {
  const a = Motion$dHook.useWillChangeImpl();
  const $0 = Motion$dTypes.willChangeAdd(a)("transform");
  React$dBasic$dHooks.useEffect_(
    (v$1, v1) => true,
    undefined,
    () => {
      $0();
      return () => {};
    }
  );
  return pure1(div({style: {willChange: a}, whileHover: {scale: 1.2}})([]))();
});
const mkVelocityExample = /* #__PURE__ */ React$dBasic$dHooks.component("VelocityExample")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    const a$1 = Motion$dHook.useVelocity(a)();
    Motion$dHook.useVelocity(a$1)();
    return pure1(div({style: {x: a}, drag: "x"})([]))();
  };
});
const mkTimeExample = /* #__PURE__ */ React$dBasic$dHooks.component("TimeExample")(v => () => {
  const a = Motion$dHook.useTimeImpl();
  const a$1 = Motion$dHook.useTransformMapImpl(a, t => t / 4000.0 * 360.0);
  return pure1(div({style: {rotate: a$1, width: "100px", height: "100px", background: "#60f"}})([]))();
});
const mkScrollTargetExample = /* #__PURE__ */ React$dBasic$dHooks.component("ScrollTargetExample")(v => () => {
  const a = React$dBasic$dHooks.useRef_(Data$dNullable.null);
  Motion$dHook.useScrollWithOptionsImpl({target: a});
  return pure1(div2({ref: a, children: ["Scroll target element"]}))();
});
const mkScrollSpringExample = /* #__PURE__ */ React$dBasic$dHooks.component("ScrollSpringExample")(v => () => {
  const a = Motion$dHook.useScrollWithOptionsImpl({});
  const a$1 = Motion$dHook.useSpringImpl(
    a.scrollYProgress,
    {
      stiffness: 100,
      damping: 30,
      restDelta: 0.001,
      from: Literals$dUndefined._undefined,
      to: Literals$dUndefined._undefined,
      mass: Literals$dUndefined._undefined,
      velocity: Literals$dUndefined._undefined,
      restSpeed: Literals$dUndefined._undefined
    }
  );
  return pure1(div({style: {scaleX: a$1, transformOrigin: "left", position: "fixed", top: "0", left: "0", right: "0", height: "4px", background: "#60f"}})([]))();
});
const mkScrollProgressBarExample = /* #__PURE__ */ React$dBasic$dHooks.component("ScrollProgressBar")(v => () => {
  const a = Motion$dHook.useScrollWithOptionsImpl({});
  return pure1(div({style: {scaleX: a.scrollYProgress, transformOrigin: "left", position: "fixed", top: "0", left: "0", right: "0", height: "4px", background: "#60f"}})([]))();
});
const mkScrollOffsetExample = /* #__PURE__ */ React$dBasic$dHooks.component("ScrollOffsetExample")(v => () => {
  const a = React$dBasic$dHooks.useRef_(Data$dNullable.null);
  Motion$dHook.useScrollWithOptionsImpl({target: a, offset: ["start end", "end start"]});
  return pure1(div2({ref: a, children: ["Offset scroll target"]}))();
});
const mkScrollContainerExample = /* #__PURE__ */ React$dBasic$dHooks.component("ScrollContainerExample")(v => () => {
  const a = React$dBasic$dHooks.useRef_(Data$dNullable.null);
  Motion$dHook.useScrollWithOptionsImpl({container: a, axis: "x"});
  return pure1(div2({ref: a, children: ["Scrollable container"]}))();
});
const mkReorderHorizontalExample = /* #__PURE__ */ React$dBasic$dHooks.component("ReorderHorizontal")(v => {
  const $0 = React$dBasic$dHooks.useState$p([1, 2, 3, 4]);
  return () => {
    const a = $0();
    return pure1(Motion.reorderGroupImpl({axis: "x", values: Data$dFunctor.arrayMap(Unsafe$dCoerce.unsafeCoerce)(a._1), onReorder: newItems => a._2(newItems)()})(Data$dFunctor.arrayMap(item => Motion.reorderItemImpl({
      key: Data$dShow.showIntImpl(item),
      value: item
    })(Data$dShow.showIntImpl(item)))(a._1)))();
  };
});
const mkReorderExample = /* #__PURE__ */ React$dBasic$dHooks.component("ReorderExample")(v => {
  const $0 = React$dBasic$dHooks.useState$p(["a", "b", "c"]);
  return () => {
    const a = $0();
    return pure1(Motion.reorderGroupImpl({axis: "y", values: Data$dFunctor.arrayMap(Unsafe$dCoerce.unsafeCoerce)(a._1), onReorder: newItems => a._2(newItems)()})(Data$dFunctor.arrayMap(item => Motion.reorderItemImpl({
      key: item,
      value: item
    })(item))(a._1)))();
  };
});
const mkReducedMotionExample = /* #__PURE__ */ React$dBasic$dHooks.component("ReducedMotionExample")(v => () => {
  Motion$dHook.useReducedMotionImpl();
  return pure1(div({animate: {x: 100.0}})([]))();
});
const mkOnAnimationCancelExample = /* #__PURE__ */ React$dBasic$dHooks.component("OnAnimationCancelExample")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    React$dBasic$dHooks.useEffect_((v$1, v1) => true, undefined, Motion$dValue.onAnimationCancel(v1 => Effect$dConsole.log("cancelled"))(a));
    return pure1(div({style: {x: a}})([]))();
  };
});
const mkMotionValueEventExample = /* #__PURE__ */ React$dBasic$dHooks.component("MotionValueEventExample")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    Motion$dHook.useMotionValueEventImpl(a, "change", $1 => Effect$dConsole.log("x changed to " + Data$dShow.showNumberImpl($1))());
    return pure1(div({style: {x: a}, drag: "x"})([]))();
  };
});
const mkMotionValueAnimationEventsExample = /* #__PURE__ */ React$dBasic$dHooks.component("MVAnimEvents")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    Motion$dHook.useMotionValueEventImpl(a, "animationStart", $1 => Effect$dConsole.log("animation started")());
    Motion$dHook.useMotionValueEventImpl(a, "animationComplete", $1 => Effect$dConsole.log("animation completed")());
    Motion$dHook.useMotionValueEventImpl(a, "animationCancel", $1 => Effect$dConsole.log("animation cancelled")());
    return pure1(div({style: {x: a}, animate: {x: 100.0}})([]))();
  };
});
const mkMotionConfigExample = /* #__PURE__ */ React$dBasic$dHooks.component("MotionConfigExample")(v => pure1(Motion.motionConfigImpl({transition: {type: "spring"}})([
  div({animate: {x: 100.0}})([])
])));
const mkLazyMotionStrictExample = /* #__PURE__ */ React$dBasic$dHooks.component("LazyMotionStrict")(v => pure1(Motion.lazyMotionImpl({features: {}, strict: true})([
  "Strict lazy motion"
])));
const mkLazyMotionExample = /* #__PURE__ */ React$dBasic$dHooks.component("LazyMotionExample")(v => pure1(Motion.lazyMotionImpl({features: {}})(["Lazy loaded features"])));
const mkLayoutGroupInheritExample = /* #__PURE__ */ React$dBasic$dHooks.component("LayoutGroupInherit")(v => pure1(Motion.layoutGroupImpl({id: "outer"})([
  Motion.layoutGroupImpl({id: "inner", inherit: "id"})([div({layout: true})([])])
])));
const mkLayoutGroupExample = /* #__PURE__ */ React$dBasic$dHooks.component("LayoutGroupExample")(v => pure1(Motion.layoutGroupImpl({id: "tabs"})([
  div({layout: true, layoutId: "tab1"})([]),
  div({layout: true, layoutId: "tab2"})([])
])));
const mkDragControlsExample = /* #__PURE__ */ React$dBasic$dHooks.component("DragControlsExample")(v => () => {
  const a = Motion$dHook.useDragControlsImpl();
  return pure1(React$dBasic$dDOM$dGenerated.div1({children: [div2({onPointerDown: e => Motion$dTypes.dragControlsStart(a)(e)()}), div({drag: "x"})([])]}))();
});
const mkDragControlsCancelStopExample = /* #__PURE__ */ React$dBasic$dHooks.component("DragControlsCancelStop")(v => () => {
  const a = Motion$dHook.useDragControlsImpl();
  return pure1(React$dBasic$dDOM$dGenerated.div1({
    children: [div2({onClick: v1 => Motion$dTypes.dragControlsCancel(a)()}), div2({onClick: v1 => Motion$dTypes.dragControlsStop(a)()}), div({drag: true})([])]
  }))();
});
const mkCombinedTimeVelocityExample = /* #__PURE__ */ React$dBasic$dHooks.component("CombinedTimeVelocity")(v => () => {
  const a = Motion$dHook.useTimeImpl();
  const a$1 = Motion$dHook.useTransformMapImpl(a, t => t / 10.0);
  const a$2 = Motion$dHook.useVelocity(a$1)();
  const a$3 = Motion$dHook.useTransformMapImpl(a$2, v1 => 1.0 + min(v1 < 0.0 ? -v1 : v1)(100.0) / 100.0);
  return pure1(div({style: {rotate: a$1, scale: a$3, width: "100px", height: "100px", background: "linear-gradient(135deg, #60f, #f06)", borderRadius: "16px"}})([]))();
});
const mkAnimationFrameExample = /* #__PURE__ */ React$dBasic$dHooks.component("AnimationFrameExample")(v => () => {
  Motion$dHook.useAnimationFrameImpl(time => delta => Effect$dConsole.log("frame: time=" + Data$dShow.showNumberImpl(time) + " delta=" + Data$dShow.showNumberImpl(delta)));
  return pure1(React$dBasic$dDOM$dGenerated.div1({children: ["Running animation frame loop"]}))();
});
export {
  div,
  div2,
  min,
  mkAnimationFrameExample,
  mkCombinedTimeVelocityExample,
  mkDragControlsCancelStopExample,
  mkDragControlsExample,
  mkLayoutGroupExample,
  mkLayoutGroupInheritExample,
  mkLazyMotionExample,
  mkLazyMotionStrictExample,
  mkMotionConfigExample,
  mkMotionValueAnimationEventsExample,
  mkMotionValueEventExample,
  mkOnAnimationCancelExample,
  mkReducedMotionExample,
  mkReorderExample,
  mkReorderHorizontalExample,
  mkScrollContainerExample,
  mkScrollOffsetExample,
  mkScrollProgressBarExample,
  mkScrollSpringExample,
  mkScrollTargetExample,
  mkTimeExample,
  mkVelocityExample,
  mkWillChangeExample,
  pure1
};
