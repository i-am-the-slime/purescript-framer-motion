// | This module provides an efficient (no `ReactDOM.findDOMNode`) and
// | declarative way to aquire a `Node` for an element in your render
// | tree.
// |
// | For example:
// |
// | ```purs
// | render self =
// |   ref \myRef ->
// |     case myRef of
// |       Nothing -> R.text "First DOM render in progress..."
// |       Just _  -> R.text "First DOM render complete."
// | ```
import * as Data$dNullable from "../Data.Nullable/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import {mkRef} from "./foreign.js";
const ref_ = /* #__PURE__ */ mkRef(Data$dNullable.toMaybe);
const selectorRef = qs => render => React$dBasic.element(ref_)({render, selector: Data$dNullable.notNull(qs)});
const ref = render => React$dBasic.element(ref_)({render, selector: Data$dNullable.null});
export {ref, ref_, selectorRef};
export * from "./foreign.js";
