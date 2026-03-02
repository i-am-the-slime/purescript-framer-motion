import * as Data$dFunction from "../Data.Function/index.js";
const identity = x => x;
const iapply = dict => dict.iapply;
const iapplyFirst = dictIxApply => a => b => dictIxApply.iapply(dictIxApply.IxFunctor0().imap(Data$dFunction.const)(a))(b);
const iapplySecond = dictIxApply => a => b => dictIxApply.iapply(dictIxApply.IxFunctor0().imap(v => identity)(a))(b);
export {iapply, iapplyFirst, iapplySecond, identity};
