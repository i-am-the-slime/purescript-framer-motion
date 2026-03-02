import * as Control$dMonad$dWriter$dTrans from "../Control.Monad.Writer.Trans/index.js";
import * as Data$dEither from "../Data.Either/index.js";
import * as Data$dEq from "../Data.Eq/index.js";
import * as Data$dIdentity from "../Data.Identity/index.js";
import * as Data$dSemigroup from "../Data.Semigroup/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dClass from "../Effect.Class/index.js";
import * as Motion from "../Motion/index.js";
import * as Motion$dElement from "../Motion.Element/index.js";
import * as React$dTestingLibrary from "../React.TestingLibrary/index.js";
import * as Test$dSpec from "../Test.Spec/index.js";
import * as Test$dSpec$dAssertions from "../Test.Spec.Assertions/index.js";
import * as Test$dSpec$dTree from "../Test.Spec.Tree/index.js";
const shouldEqual = /* #__PURE__ */ Test$dSpec$dAssertions.shouldEqual(Effect$dAff.monadThrowAff)(Data$dShow.showString)(Data$dEq.eqString);
const div = /* #__PURE__ */ Motion$dElement.createMotionElement("div");
const render = /* #__PURE__ */ React$dTestingLibrary.render(Effect$dClass.monadEffectEffect);
const spec = /* #__PURE__ */ (() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind((() => {
  const $0 = Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("converts String")(shouldEqual("hello")("hello")))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("converts Int")(shouldEqual("42")("42")))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("converts Tuple")(shouldEqual("item-1")("item-1")))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("converts Proxy symbol")(shouldEqual("image")("image")))(() => Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("converts nested Tuples")(shouldEqual("gallery-5-thumb")("gallery-5-thumb"))))));
  return Data$dTuple.$Tuple($0._1, [Test$dSpec$dTree.$Tree("Node", Data$dEither.$Either("Left", "MorphKey"), $0._2)]);
})())(() => {
  const $0 = Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders a morphed element")(Effect$dAff._bind(Effect$dAff._liftEffect(render(Motion.morphImpl("test-key")(div({
    "data-testid": "morphed"
  })("Hello")))))(result => Effect$dAff._bind(result.findByTestId()("morphed"))(() => Effect$dAff._pure())));
  return Data$dTuple.$Tuple($0._1, [Test$dSpec$dTree.$Tree("Node", Data$dEither.$Either("Left", "morph"), $0._2)]);
}))();
export {div, render, shouldEqual, spec};
