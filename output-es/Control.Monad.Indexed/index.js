import * as $runtime from "../runtime.js";
const iwhenM = dictIxMonad => {
  const $0 = dictIxMonad.IxApplicative0();
  return mb => m => dictIxMonad.IxBind1().ibind(mb)(b => {
    if (b) { return m; }
    return $0.ipure();
  });
};
const iunlessM = dictIxMonad => {
  const $0 = dictIxMonad.IxApplicative0();
  return mb => m => dictIxMonad.IxBind1().ibind(mb)(b => {
    if (!b) { return m; }
    if (b) { return $0.ipure(); }
    $runtime.fail();
  });
};
const iap = dictIxMonad => {
  const IxBind1 = dictIxMonad.IxBind1();
  return f => a => IxBind1.ibind(f)(f$p => IxBind1.ibind(a)(a$p => dictIxMonad.IxApplicative0().ipure(f$p(a$p))));
};
export {iap, iunlessM, iwhenM};
