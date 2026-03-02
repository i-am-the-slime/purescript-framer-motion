import * as $runtime from "../runtime.js";
import * as Data$dArray from "../Data.Array/index.js";
import * as Data$dFunctor from "../Data.Functor/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import * as Data$dOrd from "../Data.Ord/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Effect$dConsole from "../Effect.Console/index.js";
import * as Motion from "../Motion/index.js";
import * as Motion$dElement from "../Motion.Element/index.js";
import * as Motion$dHook from "../Motion.Hook/index.js";
import * as Motion$dTypes from "../Motion.Types/index.js";
import * as Motion$dValue from "../Motion.Value/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import * as React$dBasic$dDOM$dClient from "../React.Basic.DOM.Client/index.js";
import * as React$dBasic$dDOM$dGenerated from "../React.Basic.DOM.Generated/index.js";
import * as React$dBasic$dHooks from "../React.Basic.Hooks/index.js";
import * as React$dBasic$dHooks$dInternal from "../React.Basic.Hooks.Internal/index.js";
import * as Type$dEquality from "../Type.Equality/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import * as Web$dDOM$dNonElementParentNode from "../Web.DOM.NonElementParentNode/index.js";
import * as Web$dHTML from "../Web.HTML/index.js";
import * as Web$dHTML$dWindow from "../Web.HTML.Window/index.js";
import {domAnimation, jsRound, merge2, motionDivWithDragControls, setTextContent, useScrollRawImpl} from "./foreign.js";
const pure = /* #__PURE__ */ (() => React$dBasic$dHooks$dInternal.applicativeRender(Type$dEquality.refl).pure)();
const div = /* #__PURE__ */ Motion$dElement.createMotionElement("div");
const div1 = /* #__PURE__ */ React$dBasic.element(React$dBasic$dDOM$dGenerated._div$p);
const max = x => y => {
  const v = Data$dOrd.ordNumber.compare(x)(y);
  if (v === "LT") { return y; }
  if (v === "EQ") { return x; }
  if (v === "GT") { return x; }
  $runtime.fail();
};
const min = x => y => {
  const v = Data$dOrd.ordNumber.compare(x)(y);
  if (v === "LT") { return x; }
  if (v === "EQ") { return x; }
  if (v === "GT") { return y; }
  $runtime.fail();
};
const span = /* #__PURE__ */ React$dBasic.element(React$dBasic$dDOM$dGenerated._span$p);
const button = /* #__PURE__ */ React$dBasic.element(React$dBasic$dDOM$dGenerated._button$p);
const p = /* #__PURE__ */ React$dBasic.element(React$dBasic$dDOM$dGenerated._p$p);
const h2 = /* #__PURE__ */ React$dBasic.element(React$dBasic$dDOM$dGenerated._h2$p);
const useWillChangeDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseWillChangeDemo")(v => () => {
  const a = Motion$dHook.useWillChangeImpl();
  return pure(div({
    style: {width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #fa709a, #fee140)", willChange: a},
    whileHover: {scale: 1.3},
    whileTap: {scale: 0.95},
    transition: {type: "spring", stiffness: 300, damping: 15}
  })([div1({style: {color: "white", fontSize: "11px", padding: "8px", textAlign: "center", lineHeight: "1.3"}, children: ["hover / tap me"]})]))();
});
const useWillChangeDemo = useWillChangeDemo_;
const useVelocityDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseVelocityDemo")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    const a$1 = Motion$dHook.useVelocity(a)();
    const a$2 = Motion$dHook.useTransformMapImpl(
      a$1,
      v1 => "hsl(" + Data$dShow.showNumberImpl(280.0 - max(0.0)(min(1.0)(v1 < 0.0 ? -v1 / 1000.0 : v1 / 1000.0)) * 120.0) + ", 80%, 60%)"
    );
    return pure(React$dBasic$dDOM$dGenerated.div1({
      children: [
        div({style: {x: a, width: "80px", height: "80px", borderRadius: "12px", background: a$2, cursor: "grab"}, drag: "x", dragElastic: 0.2})([
          div1({style: {color: "white", fontSize: "11px", padding: "8px", textAlign: "center"}, children: ["drag me"]})
        ])
      ]
    }))();
  };
});
const useVelocityDemo = useVelocityDemo_;
const useTimeDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseTimeDemo")(v => () => {
  const a = Motion$dHook.useTimeImpl();
  const a$1 = Motion$dHook.useTransformMapImpl(a, t => t / 20.0);
  return pure(div({style: {width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #667eea, #764ba2)", rotate: a$1}})([]))();
});
const useTimeDemo = useTimeDemo_;
const useReducedMotionDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseReducedMotionDemo")(v => () => {
  const a = Motion$dHook.useReducedMotionImpl();
  return pure(React$dBasic$dDOM$dGenerated.div1({
    children: [
      div1({
        style: {fontSize: "14px", marginBottom: "12px", fontFamily: "monospace"},
        children: [a ? "reduced motion: ON — animation would be disabled" : "reduced motion: OFF — animations play normally"]
      }),
      a
        ? div1({
            style: {
              width: "80px",
              height: "80px",
              borderRadius: "12px",
              background: "linear-gradient(135deg, #43e97b, #38f9d7)",
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              fontSize: "11px",
              color: "#333"
            },
            children: ["static"]
          })
        : div({
            style: {width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #43e97b, #38f9d7)"},
            animate: {x: 200.0},
            transition: {type: "spring", repeat: Motion$dTypes.infinity, repeatType: "reverse"}
          })([])
    ]
  }))();
});
const useReducedMotionDemo = useReducedMotionDemo_;
const useMotionValueEventDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseMotionValueEventDemo")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    const a$1 = React$dBasic$dHooks.useState$p("")();
    Motion$dHook.useMotionValueEventImpl(a, "change", $1 => a$1._2("x = " + Data$dShow.showNumberImpl($1))());
    return pure(React$dBasic$dDOM$dGenerated.div1({
      children: [
        div({style: {x: a, width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #a18cd1, #fbc2eb)", cursor: "grab"}, drag: "x"})([
          div1({style: {color: "white", fontSize: "11px", padding: "8px", textAlign: "center"}, children: ["drag me"]})
        ]),
        div1({style: {marginTop: "8px", fontSize: "13px", fontFamily: "monospace", color: "#888"}, children: [a$1._1]})
      ]
    }))();
  };
});
const useMotionValueEventDemo = useMotionValueEventDemo_;
const useDragControlsDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseDragControlsDemo")(v => () => {
  const a = Motion$dHook.useDragControlsImpl();
  return pure(motionDivWithDragControls(a)([
    div1({
      style: {display: "flex", alignItems: "center", gap: "12px", padding: "12px"},
      children: [
        div1({
          style: {
            width: "32px",
            height: "32px",
            borderRadius: "6px",
            background: "rgba(255,255,255,0.3)",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            cursor: "grab",
            fontSize: "18px",
            userSelect: "none",
            flexShrink: "0"
          },
          onPointerDown: e => Motion$dTypes.dragControlsStart(a)(e)(),
          children: ["⠿"]
        }),
        span({style: {color: "white", fontSize: "13px"}, children: ["drag via handle"]})
      ]
    })
  ]))();
});
const useDragControlsDemo = useDragControlsDemo_;
const useAnimationFrameDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseAnimationFrameDemo")(v => () => {
  const a = React$dBasic$dHooks.useRef_(Data$dNullable.null);
  Motion$dHook.useAnimationFrameImpl(time => _delta => setTextContent(a)("elapsed: " + Data$dShow.showIntImpl(jsRound(time / 1000.0)) + "s"));
  return pure(div1({ref: a, style: {fontSize: "14px", fontFamily: "monospace"}, children: ["elapsed: 0s"]}))();
});
const useAnimationFrameDemo = useAnimationFrameDemo_;
const unsafeUseScroll = opts => () => useScrollRawImpl(opts);
const useScrollDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("UseScrollDemo")(v => () => {
  const a = React$dBasic$dHooks.useRef_(Data$dNullable.null);
  const a$1 = useScrollRawImpl({container: a});
  const a$2 = Motion$dHook.useTransformMapImpl(a$1.scrollYProgress, p1 => Data$dShow.showNumberImpl(max(2.0)(p1 * 100.0)) + "%");
  return pure(React$dBasic$dDOM$dGenerated.div1({
    children: [
      div1({
        style: {height: "6px", borderRadius: "3px", background: "#e0e0e8", marginBottom: "12px", overflow: "hidden"},
        children: [div({style: {width: a$2, height: "6px", borderRadius: "3px", background: "linear-gradient(90deg, #667eea, #764ba2)"}})([])]
      }),
      div1({
        ref: a,
        style: {height: "200px", overflowY: "scroll", borderRadius: "8px", border: "1px solid #e0e0e8", padding: "16px"},
        children: Data$dFunctor.arrayMap(i => div1({
          key: Data$dShow.showIntImpl(i),
          style: {padding: "12px 0", borderBottom: "1px solid #f0f0f4"},
          children: ["Scroll item " + Data$dShow.showIntImpl(i)]
        }))(Data$dArray.rangeImpl(1, 20))
      }),
      div1({style: {fontSize: "13px", color: "#888", marginTop: "8px"}, children: ["Scroll the container above — the purple bar tracks progress"]})
    ]
  }))();
});
const useScrollDemo = useScrollDemo_;
const spacer = /* #__PURE__ */ div1({style: {height: "200px"}, children: []});
const reorderDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("ReorderDemo")(v => {
  const $0 = React$dBasic$dHooks.useState$p(["Apples", "Bananas", "Cherries", "Dates", "Elderberries"]);
  return () => {
    const a = $0();
    return pure(Motion.reorderGroupImpl({axis: "y", values: Data$dFunctor.arrayMap(Unsafe$dCoerce.unsafeCoerce)(a._1), onReorder: newItems => a._2(newItems)()})(Data$dFunctor.arrayMap(item => Motion.reorderItemImpl({
      key: item,
      value: item
    })(div1({
      style: {
        padding: "12px 16px",
        marginBottom: "4px",
        borderRadius: "8px",
        background: "white",
        border: "1px solid #e0e0e8",
        cursor: "grab",
        display: "flex",
        alignItems: "center",
        gap: "8px",
        userSelect: "none"
      },
      children: [span({style: {color: "#aaa"}, children: ["⠿"]}), item]
    })))(a._1)))();
  };
});
const reorderDemo = reorderDemo_;
const onAnimationCancelDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("OnAnimationCancelDemo")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    const a$1 = React$dBasic$dHooks.useState$p("idle")();
    const $1 = Motion$dValue.onAnimationStart(v2 => a$1._2("animating"))(a);
    React$dBasic$dHooks.useEffect_(
      (v$1, v1) => true,
      undefined,
      () => {
        const u1 = $1();
        const u2 = Motion$dValue.onAnimationComplete(v2 => a$1._2("complete"))(a)();
        const u3 = Motion$dValue.onAnimationCancel(v2 => a$1._2("cancelled!"))(a)();
        return () => {
          u1();
          u2();
          return u3();
        };
      }
    );
    return pure(React$dBasic$dDOM$dGenerated.div1({
      children: [
        div({
          style: {x: a, width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #ffecd2, #fcb69f)", cursor: "grab"},
          drag: "x",
          animate: {x: 200.0},
          transition: {duration: 3.0}
        })([div1({style: {fontSize: "11px", padding: "8px", textAlign: "center", color: "#666"}, children: ["drag to cancel"]})]),
        div1({style: {marginTop: "8px", fontSize: "13px", fontFamily: "monospace", color: "#888"}, children: ["status: " + a$1._1]})
      ]
    }))();
  };
});
const onAnimationCancelDemoSafe_ = /* #__PURE__ */ React$dBasic$dHooks.component("OnAnimationCancelDemoSafe")(v => {
  const $0 = Motion$dValue.useMotionValue(0.0);
  return () => {
    const a = $0();
    const a$1 = React$dBasic$dHooks.useState$p("idle — click Animate to start")();
    const a$2 = React$dBasic$dHooks.useState$p(false)();
    Motion$dHook.useMotionValueEventImpl(a, "animationStart", $1 => a$1._2("animating… grab the box to cancel!")());
    Motion$dHook.useMotionValueEventImpl(a, "animationComplete", $1 => a$1._2("complete")());
    Motion$dHook.useMotionValueEventImpl(a, "animationCancel", $1 => a$1._2("cancelled!")());
    return pure(React$dBasic$dDOM$dGenerated.div1({
      children: [
        div1({
          style: {display: "flex", gap: "12px", alignItems: "center", marginBottom: "12px"},
          children: [
            button({
              onClick: v3 => {
                Motion$dValue.setImpl(0.0)(true)(a)();
                a$2._2(true)();
                return a$1._2("starting…")();
              },
              style: {padding: "8px 16px", borderRadius: "8px", border: "1px solid #ccc", cursor: "pointer"},
              children: ["Animate"]
            }),
            button({
              onClick: v3 => {
                Motion$dValue.setImpl(0.0)(true)(a)();
                a$2._2(false)();
                return a$1._2("idle — click Animate to start")();
              },
              style: {padding: "8px 16px", borderRadius: "8px", border: "1px solid #ccc", cursor: "pointer"},
              children: ["Reset"]
            })
          ]
        }),
        div({
          style: {x: a, width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #ffecd2, #fcb69f)", cursor: "grab"},
          drag: "x",
          animate: a$2._1 ? {x: 300.0} : {},
          transition: {duration: 4.0, ease: "linear"}
        })([div1({style: {fontSize: "11px", padding: "8px", textAlign: "center", color: "#666"}, children: [a$2._1 ? "grab me!" : "waiting"]})]),
        div1({style: {marginTop: "8px", fontSize: "13px", fontFamily: "monospace", color: "#888"}, children: ["status: " + a$1._1]})
      ]
    }))();
  };
});
const onAnimationCancelDemo = onAnimationCancelDemo_;
const motionConfigDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("MotionConfigDemo")(v => {
  const $0 = React$dBasic$dHooks.useState$p(false);
  return () => {
    const a = $0();
    const $1 = a._1;
    return pure(Motion.motionConfigImpl({transition: {type: "spring", stiffness: 50, damping: 10}})([
      div1({
        style: {display: "flex", gap: "12px", alignItems: "center"},
        children: [
          button({onClick: v2 => a._2(!$1)(), style: {padding: "8px 16px", borderRadius: "8px", border: "1px solid #ccc", cursor: "pointer"}, children: ["Toggle"]}),
          div({
            style: {width: "60px", height: "60px", borderRadius: "12px", background: "linear-gradient(135deg, #667eea, #764ba2)"},
            animate: {x: $1 ? 120.0 : 0.0, rotate: $1 ? 180.0 : 0.0}
          })([]),
          div({
            style: {width: "40px", height: "40px", borderRadius: "50%", background: "linear-gradient(135deg, #f093fb, #f5576c)"},
            animate: {y: $1 ? -30.0 : 0.0, scale: $1 ? 1.3 : 1.0}
          })([])
        ]
      }),
      p({style: {fontSize: "13px", color: "#888", marginTop: "8px"}, children: ["Both shapes share the same slow spring from MotionConfig"]})
    ]))();
  };
});
const motionConfigDemo = motionConfigDemo_;
const lazyMotionDemo = v => Motion.lazyMotionImpl({features: domAnimation})([
  p({
    style: {fontSize: "13px", fontFamily: "monospace", marginBottom: "12px"},
    children: ["<LazyMotion features={domAnimation}> wraps the animation below, reducing initial bundle to ~6kb"]
  }),
  div({
    style: {width: "60px", height: "60px", borderRadius: "12px", background: "linear-gradient(135deg, #667eea, #764ba2)"},
    animate: {rotate: 360.0},
    transition: {duration: 2.0, repeat: Motion$dTypes.infinity, ease: "linear"}
  })([])
]);
const layoutGroupDemo_ = /* #__PURE__ */ React$dBasic$dHooks.component("LayoutGroupDemo")(v => {
  const $0 = React$dBasic$dHooks.useState$p(0);
  return () => {
    const a = $0();
    const $1 = a._1;
    return pure(Motion.layoutGroupImpl({id: "tabs-demo"})([
      div1({
        style: {display: "flex", gap: "8px"},
        children: Data$dFunctor.arrayMap(i => div1({
          style: {padding: "8px 16px", borderRadius: "8px", cursor: "pointer", position: "relative", background: i === $1 ? "#f0f0ff" : "transparent"},
          onClick: v2 => a._2(i)(),
          key: Data$dShow.showIntImpl(i),
          children: [
            "Tab " + Data$dShow.showIntImpl(i + 1 | 0),
            ...i === $1
              ? [div({layoutId: "underline", style: {position: "absolute", bottom: "0", left: "0", right: "0", height: "2px", background: "#667eea", borderRadius: "1px"}})([])]
              : []
          ]
        }))(Data$dArray.rangeImpl(0, 2))
      })
    ]))();
  };
});
const layoutGroupDemo = layoutGroupDemo_;
const demoSection = title => description => demo => div1({
  style: {marginBottom: "40px", padding: "20px", borderRadius: "12px", background: "#f8f8fc", border: "1px solid #e0e0e8"},
  children: [
    h2({style: {margin: "0 0 4px 0", fontSize: "18px"}, children: [title]}),
    p({style: {margin: "0 0 16px 0", fontSize: "14px", color: "#666"}, children: [description]}),
    demo
  ]
});
const mkApp = () => {
  const d1 = useTimeDemo_();
  const d2 = useVelocityDemo_();
  const d3 = useDragControlsDemo_();
  const d4 = useMotionValueEventDemo_();
  const d5 = useAnimationFrameDemo_();
  const d6 = useReducedMotionDemo_();
  const d7 = useWillChangeDemo_();
  const d8 = useScrollDemo_();
  const d10 = layoutGroupDemo_();
  const d11 = motionConfigDemo_();
  const d12 = reorderDemo_();
  const d13 = onAnimationCancelDemoSafe_();
  return React$dBasic$dHooks.component("App")(v => pure(div1({
    style: {fontFamily: "'Inter', system-ui, sans-serif", maxWidth: "800px", margin: "0 auto", padding: "24px", color: "#1a1a2e"},
    children: [
      React$dBasic$dDOM$dGenerated.h11({children: ["purescript-react-motion demos"]}),
      React$dBasic$dDOM$dGenerated.p1({children: ["Each section exercises a new hook or component from the motion/react bindings."]}),
      demoSection("1. useTime + useTransform")("Continuous rotation driven by useTime")(d1()),
      demoSection("2. useVelocity")("Drag the box — velocity is chained to get acceleration")(d2()),
      demoSection("3. useDragControls")("Click the handle to start dragging the box")(d3()),
      demoSection("4. useMotionValueEvent")("Drag the box — events are logged to the console")(d4()),
      demoSection("5. useAnimationFrame")("Frame counter using useAnimationFrame")(d5()),
      demoSection("6. useReducedMotion")("Detects prefers-reduced-motion setting")(d6()),
      demoSection("7. useWillChange")("Hover to scale — willChange optimizes rendering")(d7()),
      demoSection("8. useScroll")("Scroll progress bar (fixed at top)")(d8()),
      demoSection("9. LazyMotion")("Wraps children with lazy-loaded features")(lazyMotionDemo()),
      demoSection("10. LayoutGroup")("Shared layout animations between siblings")(d10()),
      demoSection("11. MotionConfig")("Spring transition applied to all children")(d11()),
      demoSection("12. Reorder")("Drag to reorder the list")(d12()),
      demoSection("13. onAnimationCancel")("MotionValue event for cancelled animations")(d13()),
      spacer
    ]
  })))();
};
const main = () => {
  const app = mkApp();
  const $0 = Web$dHTML.window();
  const parent = Web$dHTML$dWindow.document($0)();
  const elem = Web$dDOM$dNonElementParentNode.getElementById("app")(parent)();
  if (elem.tag === "Just") {
    const root = React$dBasic$dDOM$dClient.createRoot(elem._1)();
    return React$dBasic$dDOM$dClient.renderRoot(root)(app())();
  }
  if (elem.tag === "Nothing") { return Effect$dConsole.error("Could not find #app element")(); }
  $runtime.fail();
};
const boxStyle = extra => merge2({width: "80px", height: "80px", borderRadius: "12px", background: "linear-gradient(135deg, #667eea, #764ba2)", cursor: "grab"})(extra);
export {
  boxStyle,
  button,
  demoSection,
  div,
  div1,
  h2,
  layoutGroupDemo,
  layoutGroupDemo_,
  lazyMotionDemo,
  main,
  max,
  min,
  mkApp,
  motionConfigDemo,
  motionConfigDemo_,
  onAnimationCancelDemo,
  onAnimationCancelDemoSafe_,
  onAnimationCancelDemo_,
  p,
  pure,
  reorderDemo,
  reorderDemo_,
  spacer,
  span,
  unsafeUseScroll,
  useAnimationFrameDemo,
  useAnimationFrameDemo_,
  useDragControlsDemo,
  useDragControlsDemo_,
  useMotionValueEventDemo,
  useMotionValueEventDemo_,
  useReducedMotionDemo,
  useReducedMotionDemo_,
  useScrollDemo,
  useScrollDemo_,
  useTimeDemo,
  useTimeDemo_,
  useVelocityDemo,
  useVelocityDemo_,
  useWillChangeDemo,
  useWillChangeDemo_
};
export * from "./foreign.js";
