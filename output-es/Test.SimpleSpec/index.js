import * as $runtime from "../runtime.js";
import * as Control$dMonad$dWriter$dTrans from "../Control.Monad.Writer.Trans/index.js";
import * as Data$dEither from "../Data.Either/index.js";
import * as Data$dEq from "../Data.Eq/index.js";
import * as Data$dIdentity from "../Data.Identity/index.js";
import * as Data$dSemigroup from "../Data.Semigroup/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dClass from "../Effect.Class/index.js";
import * as Motion$dElement from "../Motion.Element/index.js";
import * as React$dTestingLibrary from "../React.TestingLibrary/index.js";
import * as Test$dSpec from "../Test.Spec/index.js";
import * as Test$dSpec$dAssertions from "../Test.Spec.Assertions/index.js";
import * as Test$dSpec$dTree from "../Test.Spec.Tree/index.js";
const div = /* #__PURE__ */ Motion$dElement.createMotionElement("div");
const render = /* #__PURE__ */ React$dTestingLibrary.render(Effect$dClass.monadEffectEffect);
const button = /* #__PURE__ */ Motion$dElement.createMotionElement("button");
const span = /* #__PURE__ */ Motion$dElement.createMotionElement("span");
const input = /* #__PURE__ */ Motion$dElement.createMotionElement_("input");
const li = /* #__PURE__ */ Motion$dElement.createMotionElement("li");
const svg = /* #__PURE__ */ Motion$dElement.createMotionElement("svg");
const path_ = /* #__PURE__ */ Motion$dElement.createMotionElement_("path");
const g = /* #__PURE__ */ Motion$dElement.createMotionElement("g");
const shouldEqual = /* #__PURE__ */ Test$dSpec$dAssertions.shouldEqual(Effect$dAff.monadThrowAff)(Data$dShow.showBoolean)(Data$dEq.eqBoolean);
const spec = /* #__PURE__ */ (() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind((() => {
  const $0 = Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.div")(Effect$dAff._bind(Effect$dAff._liftEffect(render(div({
    "data-testid": "test-div"
  })("Hello"))))(result => Effect$dAff._bind(result.findByTestId()("test-div"))(() => Effect$dAff._pure()))))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.button")(Effect$dAff._bind(Effect$dAff._liftEffect(render(button({
    "data-testid": "test-button"
  })("Click"))))(result => Effect$dAff._bind(result.findByTestId()("test-button"))(() => Effect$dAff._pure()))))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.span")(Effect$dAff._bind(Effect$dAff._liftEffect(render(span({
    "data-testid": "test-span"
  })("Span"))))(result => Effect$dAff._bind(result.findByTestId()("test-span"))(() => Effect$dAff._pure()))))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.input")(Effect$dAff._bind(Effect$dAff._liftEffect(render(input({
    "data-testid": "test-input"
  }))))(result => Effect$dAff._bind(result.findByTestId()("test-input"))(() => Effect$dAff._pure()))))(() => Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.li")(Effect$dAff._bind(Effect$dAff._liftEffect(render(li({
    "data-testid": "test-li"
  })("Item"))))(result => Effect$dAff._bind(result.findByTestId()("test-li"))(() => Effect$dAff._pure())))))));
  return Data$dTuple.$Tuple($0._1, [Test$dSpec$dTree.$Tree("Node", Data$dEither.$Either("Left", "MotionComponent"), $0._2)]);
})())(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind((() => {
  const $0 = Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.svg")(Effect$dAff._bind(Effect$dAff._liftEffect(render(svg({
    "data-testid": "test-svg"
  })([]))))(result => Effect$dAff._bind(result.findByTestId()("test-svg"))(() => Effect$dAff._pure()))))(() => Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.path inside svg")(Effect$dAff._bind(Effect$dAff._liftEffect(render(svg({})([
    path_({"data-testid": "test-path"})
  ]))))(result => Effect$dAff._bind(result.findByTestId()("test-path"))(() => Effect$dAff._pure()))))(() => Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("renders motion.g inside svg")(Effect$dAff._bind(Effect$dAff._liftEffect(render(svg({})([
    g({"data-testid": "test-g"})([])
  ]))))(result => Effect$dAff._bind(result.findByTestId()("test-g"))(() => Effect$dAff._pure())))));
  return Data$dTuple.$Tuple($0._1, [Test$dSpec$dTree.$Tree("Node", Data$dEither.$Either("Left", "SVG Components"), $0._2)]);
})())(() => {
  const $0 = Control$dMonad$dWriter$dTrans.bindWriterT(Data$dSemigroup.semigroupArray)(Data$dIdentity.bindIdentity).bind(Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("queryByTestId returns Just for existing element")(Effect$dAff._bind(Effect$dAff._liftEffect(render(div({
    "data-testid": "exists"
  })([]))))(result => shouldEqual((() => {
    const $0 = result.queryByTestId()("exists");
    if ($0.tag === "Nothing") { return false; }
    if ($0.tag === "Just") { return true; }
    $runtime.fail();
  })())(true))))(() => Test$dSpec.it(Data$dIdentity.monadIdentity)(Test$dSpec.exampleMUnit)("queryByTestId returns Nothing for non-existing element")(Effect$dAff._bind(Effect$dAff._liftEffect(render(div({
    "data-testid": "exists"
  })([]))))(result => shouldEqual((() => {
    const $0 = result.queryByTestId()("does-not-exist");
    if ($0.tag === "Nothing") { return true; }
    if ($0.tag === "Just") { return false; }
    $runtime.fail();
  })())(true))));
  return Data$dTuple.$Tuple($0._1, [Test$dSpec$dTree.$Tree("Node", Data$dEither.$Either("Left", "Query functions"), $0._2)]);
})))();
export {button, div, g, input, li, path_, render, shouldEqual, span, spec, svg};
