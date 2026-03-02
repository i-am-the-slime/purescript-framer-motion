import * as Data$dOrd from "../Data.Ord/index.js";
const YesOrNo = x => x;
const eqYesOrNo = {eq: x => y => x === y};
const ordYesOrNo = {compare: x => y => Data$dOrd.ordString.compare(x)(y), Eq0: () => eqYesOrNo};
const yes = "yes";
const no = "no";
const heytingAlgebraYesOrNo = {
  ff: "no",
  tt: "yes",
  implies: a => b => heytingAlgebraYesOrNo.disj(heytingAlgebraYesOrNo.not(a))(b),
  conj: a => b => {
    if (a === "yes") { return b; }
    return "no";
  },
  disj: a => b => {
    if (a === "yes") { return "yes"; }
    return b;
  },
  not: a => {
    if (a === "yes") { return "no"; }
    return "yes";
  }
};
export {YesOrNo, eqYesOrNo, heytingAlgebraYesOrNo, no, ordYesOrNo, yes};
