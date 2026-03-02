import * as $runtime from "../runtime.js";
import * as Control$dMonad$dError$dClass from "../Control.Monad.Error.Class/index.js";
import * as Data$dFoldable from "../Data.Foldable/index.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as Effect from "../Effect/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dException from "../Effect.Exception/index.js";
import * as React$dBasic$dHooks from "../React.Basic.Hooks/index.js";
import * as React$dBasic$dHooks$dInternal from "../React.Basic.Hooks.Internal/index.js";
import * as Type$dEquality from "../Type.Equality/index.js";
import * as Unsafe$dReference from "../Unsafe.Reference/index.js";
const for_ = /* #__PURE__ */ Data$dFoldable.for_(Effect.applicativeEffect)(Data$dFoldable.foldableArray);
const pure = /* #__PURE__ */ (() => React$dBasic$dHooks$dInternal.applicativeRender(Type$dEquality.refl).pure)();
const $$try = /* #__PURE__ */ Control$dMonad$dError$dClass.try(Effect$dAff.monadErrorAff);
const identity = x => x;
const UseAff = x => x;
const UseAffReducer = x => x;
const runAffReducer = v => $0 => $1 => v($0, $1);
const ntUseAffReducer = {Coercible0: () => {}};
const useAffReducer = initialState => affReducer => () => {
  const a = React$dBasic$dHooks.useMemo_(($0, $1) => Unsafe$dReference.reallyUnsafeRefEq($0)($1), affReducer, v => ($0, $1) => affReducer($0.state, $1));
  const a$1 = React$dBasic$dHooks.useReducer_(($0, $1) => Data$dTuple.$Tuple($0, $1), a, {state: initialState, effects: []});
  const $0 = a$1._2;
  const $1 = for_(a$1._1.effects)(aff => {
    const $1 = Effect$dAff._makeFiber(Effect$dAff.ffiUtil, Effect$dAff._bind(aff)(actions => Effect$dAff._liftEffect(for_(actions)($0))));
    return () => {
      const fiber = $1();
      fiber.run();
    };
  });
  React$dBasic$dHooks.useEffect_(
    ($2, $3) => Unsafe$dReference.reallyUnsafeRefEq($2)($3),
    a$1._1.effects,
    () => {
      $1();
      return () => {};
    }
  );
  return pure(Data$dTuple.$Tuple(a$1._1.state, $0))();
};
const ntUseAff = {Coercible0: () => {}};
const useAff$p = dictEq => initUpdater => deps => aff => () => {
  const a = React$dBasic$dHooks.useState_(($0, $1) => Data$dTuple.$Tuple($0, $1), Data$dMaybe.Nothing);
  const $0 = a._2(initUpdater);
  React$dBasic$dHooks.useEffect_(
    ($1, $2) => dictEq.eq($1)($2),
    deps,
    () => {
      $0();
      const fiber = Effect$dAff._makeFiber(Effect$dAff.ffiUtil, Effect$dAff._bind($$try(aff))(r => Effect$dAff._liftEffect(a._2(v1 => Data$dMaybe.$Maybe("Just", r)))))();
      fiber.run();
      const $1 = Effect$dAff._makeFiber(Effect$dAff.ffiUtil, Effect$dAff.killFiber(Effect$dException.error("Stale request cancelled"))(fiber));
      return () => {
        const fiber$1 = $1();
        fiber$1.run();
      };
    }
  );
  if (a._1.tag === "Just") {
    if (a._1._1.tag === "Left") { return Effect$dException.throwException(a._1._1._1)(); }
    if (a._1._1.tag === "Right") { return Data$dMaybe.$Maybe("Just", a._1._1._1); }
    $runtime.fail();
  }
  if (a._1.tag === "Nothing") { return Data$dMaybe.Nothing; }
  $runtime.fail();
};
const useAff = dictEq => useAff$p(dictEq)(v => Data$dMaybe.Nothing);
const useSteppingAff = dictEq => useAff$p(dictEq)(identity);
const noEffects = state => ({state, effects: []});
const mkAffReducer = x => () => ($0, $1) => x($0)($1);
export {
  UseAff,
  UseAffReducer,
  for_,
  identity,
  mkAffReducer,
  noEffects,
  ntUseAff,
  ntUseAffReducer,
  pure,
  runAffReducer,
  $$try as try,
  useAff,
  useAff$p,
  useAffReducer,
  useSteppingAff
};
