import * as $runtime from "../runtime.js";
import * as Data$dEither from "../Data.Either/index.js";
import * as Data$dInt from "../Data.Int/index.js";
import * as Data$dMap$dInternal from "../Data.Map.Internal/index.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNumber from "../Data.Number/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dConsole from "../Effect.Console/index.js";
import * as Effect$dException from "../Effect.Exception/index.js";
import * as Effect$dNow from "../Effect.Now/index.js";
import * as React$dBasic$dHooks$dSuspense from "../React.Basic.Hooks.Suspense/index.js";
import * as Web$dHTML from "../Web.HTML/index.js";
import * as Web$dHTML$dWindow from "../Web.HTML.Window/index.js";
const mkSuspenseStore = dictOrd => {
  const alter = Data$dMap$dInternal.alter(dictOrd);
  return defaultMaxAge => backend => () => {
    const ref = {value: Data$dMap$dInternal.Leaf};
    const pruneCache$lazy = $runtime.binding(() => {
      if (defaultMaxAge.tag === "Nothing") { return () => {}; }
      if (defaultMaxAge.tag === "Just") {
        const $0 = defaultMaxAge._1;
        return () => {
          const now$p = Effect$dNow.now();
          const $1 = ref.value;
          ref.value = Data$dMap$dInternal.filterWithKey(dictOrd)(v => a => now$p >= a._2 + $0)($1);
          const $2 = Web$dHTML.window();
          Web$dHTML$dWindow.requestIdleCallback({timeout: Data$dInt.unsafeClamp(Data$dNumber.ceil($0))})(pruneCache$lazy())($2)();
        };
      }
      $runtime.fail();
    });
    const pruneCache = pruneCache$lazy();
    const r = Effect$dException.catchException(x => () => Data$dEither.$Either("Left", x))(() => {
      const a$p = pruneCache();
      return Data$dEither.$Either("Right", a$p);
    })();
    if (r.tag === "Left") {
      Effect$dConsole.warn("Failed to initialize the suspense store cleanup task. Ensure you're using it in a browser with `requestIdleCallback` support.")();
    } else if (r.tag === "Right") {

    } else {
      $runtime.fail();
    }
    return {
      cache: ref,
      get: x => x$1 => {
        const go = go$a0$copy => {
          let go$a0 = go$a0$copy, go$c = true, go$r;
          while (go$c) {
            const v = go$a0;
            if (v.tag === "Leaf") {
              go$c = false;
              go$r = Data$dMaybe.Nothing;
              continue;
            }
            if (v.tag === "Node") {
              const v1 = dictOrd.compare(x$1)(v._3);
              if (v1 === "LT") {
                go$a0 = v._5;
                continue;
              }
              if (v1 === "GT") {
                go$a0 = v._6;
                continue;
              }
              if (v1 === "EQ") {
                go$c = false;
                go$r = Data$dMaybe.$Maybe("Just", v._4);
                continue;
              }
            }
            $runtime.fail();
          }
          return go$r;
        };
        return () => {
          const a$p = ref.value;
          const rMaybe = go(a$p);
          const c = (() => {
            if (rMaybe.tag === "Nothing") { return Data$dMaybe.Nothing; }
            if (rMaybe.tag === "Just") {
              if (x.tag === "Nothing") {
                if (defaultMaxAge.tag === "Nothing") { return Data$dMaybe.$Maybe("Just", rMaybe._1._1); }
                if (defaultMaxAge.tag === "Just") {
                  const now$p = Effect$dNow.now();
                  if (now$p < rMaybe._1._2 + defaultMaxAge._1) {
                    const $0 = ref.value;
                    ref.value = Data$dMap$dInternal.delete(dictOrd)(x$1)($0);
                    return Data$dMaybe.Nothing;
                  }
                  return Data$dMaybe.$Maybe("Just", rMaybe._1._1);
                }
                $runtime.fail();
              }
              if (x.tag === "Nothing") { return Data$dMaybe.$Maybe("Just", rMaybe._1._1); }
              if (x.tag === "Just") {
                const now$p = Effect$dNow.now();
                if (now$p < rMaybe._1._2 + x._1) {
                  const $0 = ref.value;
                  ref.value = Data$dMap$dInternal.delete(dictOrd)(x$1)($0);
                  return Data$dMaybe.Nothing;
                }
                return Data$dMaybe.$Maybe("Just", rMaybe._1._1);
              }
            }
            $runtime.fail();
          })();
          if (c.tag === "Just") { return c._1; }
          if (c.tag === "Nothing") {
            const fiber = Effect$dAff._makeFiber(
              Effect$dAff.ffiUtil,
              Effect$dAff._bind(Effect$dAff.try(backend(x$1)))(r$1 => Effect$dAff._liftEffect((() => {
                const v = (() => {
                  if (r$1.tag === "Left") { return React$dBasic$dHooks$dSuspense.$SuspenseResult("Failed", r$1._1); }
                  if (r$1.tag === "Right") { return React$dBasic$dHooks$dSuspense.$SuspenseResult("Complete", r$1._1); }
                  $runtime.fail();
                })();
                return () => {
                  const d = Effect$dNow.now();
                  const $0 = ref.value;
                  ref.value = alter(v1 => {
                    if (v1.tag === "Nothing") { return Data$dMaybe.$Maybe("Just", Data$dTuple.$Tuple(v, d)); }
                    if (v1.tag === "Just") {
                      if (d > v1._1._2) { return Data$dMaybe.$Maybe("Just", Data$dTuple.$Tuple(v, d)); }
                      return Data$dMaybe.$Maybe("Just", v1._1);
                    }
                    $runtime.fail();
                  })(x$1)($0);
                  if (r$1.tag === "Left") { return Effect$dException.throwException(r$1._1)(); }
                  if (r$1.tag === "Right") { return r$1._1; }
                  $runtime.fail();
                };
              })()))
            )();
            fiber.run();
            const d = Effect$dNow.now();
            const $0 = ref.value;
            ref.value = Data$dMap$dInternal.insert(dictOrd)(x$1)(Data$dTuple.$Tuple(React$dBasic$dHooks$dSuspense.$SuspenseResult("InProgress", fiber), d))($0);
            return React$dBasic$dHooks$dSuspense.$SuspenseResult("InProgress", fiber);
          }
          $runtime.fail();
        };
      }
    };
  };
};
const get$p = v => d => v.get(Data$dMaybe.$Maybe("Just", d));
const $$get = v => v.get(Data$dMaybe.Nothing);
export {$$get as get, get$p, mkSuspenseStore};
