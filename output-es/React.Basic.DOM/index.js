// | This module defines helper functions for creating virtual DOM elements
// | safely.
// |
// | __*Note:* DOM element props are provided as records, and checked using `Union`
// |   constraints. This allows callers to supply only a subset of the props, and the
// |   compiler will ensure that the provided props exist and have the correct types.__
import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
import {createPortal, hydrateThen, renderThen, unmount} from "./foreign.js";
const text = Unsafe$dCoerce.unsafeCoerce;
const render$p = () => renderThen;
const render = () => jsx => node => renderThen(jsx)(node)(() => {});
const hydrate$p = () => hydrateThen;
const hydrate = () => jsx => node => hydrateThen(jsx)(node)(() => {});
export {hydrate, hydrate$p, render, render$p, text};
export * from "./foreign.js";
