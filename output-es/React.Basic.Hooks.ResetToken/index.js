import * as Data$dEq from "../Data.Eq/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as React$dBasic$dHooks from "../React.Basic.Hooks/index.js";
import * as React$dBasic$dHooks$dInternal from "../React.Basic.Hooks.Internal/index.js";
import * as Type$dEquality from "../Type.Equality/index.js";
const pure = /* #__PURE__ */ (() => React$dBasic$dHooks$dInternal.applicativeRender(Type$dEquality.refl).pure)();
const UseResetToken = x => x;
const showResetToken = {show: v => "(ResetToken " + Data$dShow.showIntImpl(v) + ")"};
const ntUseResetToken = {Coercible0: () => {}};
const useResetToken = () => {
  const a = React$dBasic$dHooks.useState_(($0, $1) => Data$dTuple.$Tuple($0, $1), 0);
  return pure(Data$dTuple.$Tuple(a._1, a._2(v1 => v1 + 1 | 0)))();
};
const eqResetToken = Data$dEq.eqInt;
export {UseResetToken, eqResetToken, ntUseResetToken, pure, showResetToken, useResetToken};
