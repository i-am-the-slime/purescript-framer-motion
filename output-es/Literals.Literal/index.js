import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
const toValue = Unsafe$dCoerce.unsafeCoerce;
const literalShow = dictShow => ({show: a => "(Literal " + dictShow.show(a) + ")"});
const literalEq = {eq: v => v1 => true};
export {literalEq, literalShow, toValue};
