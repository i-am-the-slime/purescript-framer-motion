import {_undefined} from "./foreign.js";
const undefinedShow = {show: v => "Undefined"};
const undefinedEq = {eq: v => v1 => true};
const $$undefined = _undefined;
export {$$undefined as undefined, undefinedEq, undefinedShow};
export * from "./foreign.js";
