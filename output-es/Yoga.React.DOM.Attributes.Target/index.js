import * as Data$dOrd from "../Data.Ord/index.js";
const Target = x => x;
const eqTarget = {eq: x => y => x === y};
const ordTarget = {compare: x => y => Data$dOrd.ordString.compare(x)(y), Eq0: () => eqTarget};
const targetTop = "_top";
const targetSelf = "_self";
const targetParent = "_parent";
const targetBlank = "_blank";
export {Target, eqTarget, ordTarget, targetBlank, targetParent, targetSelf, targetTop};
