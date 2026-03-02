import * as $runtime from "../runtime.js";
import * as Control$dMonad$dMaybe$dTrans from "../Control.Monad.Maybe.Trans/index.js";
import * as Data$dEq from "../Data.Eq/index.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Data$dTraversable from "../Data.Traversable/index.js";
import * as Effect from "../Effect/index.js";
import * as Effect$dAff from "../Effect.Aff/index.js";
import * as Effect$dException from "../Effect.Exception/index.js";
import * as Test$dSpec$dAssertions from "../Test.Spec.Assertions/index.js";
import * as Web$dDOM$dElement from "../Web.DOM.Element/index.js";
import * as Web$dDOM$dNode from "../Web.DOM.Node/index.js";
import * as Web$dHTML$dHTMLButtonElement from "../Web.HTML.HTMLButtonElement/index.js";
import * as Web$dHTML$dHTMLElement from "../Web.HTML.HTMLElement/index.js";
import * as Web$dHTML$dHTMLInputElement from "../Web.HTML.HTMLInputElement/index.js";
import * as Web$dHTML$dHTMLSelectElement from "../Web.HTML.HTMLSelectElement/index.js";
import * as Web$dHTML$dHTMLTextAreaElement from "../Web.HTML.HTMLTextAreaElement/index.js";
import * as Web$dInternal$dFFI from "../Web.Internal.FFI/index.js";
const shouldEqual = /* #__PURE__ */ Test$dSpec$dAssertions.shouldEqual(Effect$dAff.monadThrowAff)(Data$dShow.showString)(Data$dEq.eqString);
const bind2 = /* #__PURE__ */ (() => Control$dMonad$dMaybe$dTrans.bindMaybeT(Effect.monadEffect).bind)();
const valueShouldEqual = elem => str => Effect$dAff._bind(Effect$dAff._liftEffect((() => {
  const $0 = Data$dTraversable.traversableMaybe.traverse(Effect.applicativeEffect)(Web$dHTML$dHTMLButtonElement.value)(Web$dInternal$dFFI._unsafeReadProtoTagged(
    Data$dMaybe.Nothing,
    Data$dMaybe.Just,
    "HTMLButtonElement",
    elem
  ));
  return () => {
    const btn = $0();
    const inp = Data$dTraversable.traversableMaybe.traverse(Effect.applicativeEffect)(Web$dHTML$dHTMLInputElement.value)(Web$dInternal$dFFI._unsafeReadProtoTagged(
      Data$dMaybe.Nothing,
      Data$dMaybe.Just,
      "HTMLInputElement",
      elem
    ))();
    const txt = Data$dTraversable.traversableMaybe.traverse(Effect.applicativeEffect)(Web$dHTML$dHTMLTextAreaElement.value)(Web$dInternal$dFFI._unsafeReadProtoTagged(
      Data$dMaybe.Nothing,
      Data$dMaybe.Just,
      "HTMLTextAreaElement",
      elem
    ))();
    const sel = Data$dTraversable.traversableMaybe.traverse(Effect.applicativeEffect)(Web$dHTML$dHTMLSelectElement.value)(Web$dInternal$dFFI._unsafeReadProtoTagged(
      Data$dMaybe.Nothing,
      Data$dMaybe.Just,
      "HTMLSelectElement",
      elem
    ))();
    const $1 = txt.tag === "Nothing" ? sel : txt;
    const $2 = inp.tag === "Nothing" ? $1 : inp;
    return btn.tag === "Nothing" ? $2 : btn;
  };
})()))(maybeValue => {
  if (maybeValue.tag === "Just") { return shouldEqual(maybeValue._1)(str); }
  if (maybeValue.tag === "Nothing") { return Effect$dAff._throwError(Effect$dException.error("Element does not have a value property")); }
  $runtime.fail();
});
const textContentShouldEqual = dictBind => dictMonadEffect => dictMonadThrow => {
  const shouldEqual1 = Test$dSpec$dAssertions.shouldEqual(dictMonadThrow)(Data$dShow.showString)(Data$dEq.eqString);
  return elem => str => dictBind.bind(dictMonadEffect.liftEffect(Web$dDOM$dNode.textContent(elem)))(content => shouldEqual1(content)(str));
};
const shouldHaveAttributeWithValue = x => attr => value => Effect$dAff._bind(Effect$dAff._liftEffect(Web$dDOM$dElement.getAttribute(attr)(x)))(maybeAttrValue => {
  if (maybeAttrValue.tag === "Just") { return shouldEqual(maybeAttrValue._1)(value); }
  if (maybeAttrValue.tag === "Nothing") { return Effect$dAff._throwError(Effect$dException.error("HTMLElement does not have attribute: " + attr)); }
  $runtime.fail();
});
const shouldHaveAttribute = x => attr => Effect$dAff._bind(Effect$dAff._liftEffect(Web$dDOM$dElement.getAttribute(attr)(x)))(maybeAttrValue => {
  const $0 = (() => {
    if (maybeAttrValue.tag === "Nothing") { return false; }
    if (maybeAttrValue.tag === "Just") { return true; }
    $runtime.fail();
  })();
  const $1 = Effect$dAff._throwError(Effect$dException.error("HTMLElement does not have attribute: " + attr));
  if (!$0) { return $1; }
  if ($0) { return Effect$dAff._pure(); }
  $runtime.fail();
});
const getParentOrFailWith = failureMessage => element => Effect$dAff._liftEffect((() => {
  const $0 = bind2((() => {
    const $0 = Web$dDOM$dNode._parentElement(element);
    return () => {
      const a$p = $0();
      return Data$dNullable.nullable(a$p, Data$dMaybe.Nothing, Data$dMaybe.Just);
    };
  })())(p => {
    const $0 = Web$dHTML$dHTMLElement._read(Data$dMaybe.Nothing, Data$dMaybe.Just, p);
    return () => $0;
  });
  return () => {
    const maybeP = $0();
    if (maybeP.tag === "Just") { return maybeP._1; }
    if (maybeP.tag === "Nothing") {
      Effect$dException.throwException(Effect$dException.error(failureMessage))();
      return undefined();
    }
    $runtime.fail();
  };
})());
export {bind2, getParentOrFailWith, shouldEqual, shouldHaveAttribute, shouldHaveAttributeWithValue, textContentShouldEqual, valueShouldEqual};
