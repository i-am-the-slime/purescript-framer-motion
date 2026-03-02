import * as Control$dMonad$dWriter$dTrans from "../Control.Monad.Writer.Trans/index.js";
import * as Data$dIdentity from "../Data.Identity/index.js";
import * as Data$dSemigroup from "../Data.Semigroup/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dConsole from "../Effect.Console/index.js";
import * as Test$dMorphSpec from "../Test.MorphSpec/index.js";
import * as Test$dSimpleSpec from "../Test.SimpleSpec/index.js";
import * as Test$dSpec$dConfig from "../Test.Spec.Config/index.js";
import * as Test$dSpec$dReporter$dConsole from "../Test.Spec.Reporter.Console/index.js";
import * as Test$dSpec$dRunner from "../Test.Spec.Runner/index.js";
const discard2 = /* #__PURE__ */ (() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind)();
const main = /* #__PURE__ */ (() => {
  const $0 = Effect$dConsole.log("🧪 Starting PureScript Motion Tests...");
  return () => {
    $0();
    const fiber = Effect$dAff._makeFiber(
      Effect$dAff.ffiUtil,
      Effect$dAff._bind(Effect$dAff._map(v => {})(Test$dSpec$dRunner.runSpecT1(Test$dSpec$dConfig.defaultConfig)([Test$dSpec$dReporter$dConsole.consoleReporter])(discard2(Test$dSimpleSpec.spec)(() => Test$dMorphSpec.spec))))(() => Effect$dAff._liftEffect(Effect$dConsole.log("✅ All tests complete!")))
    )();
    fiber.run();
  };
})();
export {discard2, main};
