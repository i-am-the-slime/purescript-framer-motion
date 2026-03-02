import * as React$dBasic from "../React.Basic/index.js";
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import {mergeStyles, unsafeCreateDOMComponent_} from "./foreign.js";
const unsafeCreateDOMComponent = /* #__PURE__ */ unsafeCreateDOMComponent_(React$dBasic.element);
const semigroupCSS = {append: a => b => mergeStyles([b, a])};
const css = Unsafe$dCoerce.unsafeCoerce;
const monoidCSS = {mempty: {}, Semigroup0: () => semigroupCSS};
export {css, monoidCSS, semigroupCSS, unsafeCreateDOMComponent};
export * from "./foreign.js";
