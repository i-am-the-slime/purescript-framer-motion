const Indexed = x => x;
const showIndexed = dictShow => ({show: v => "(Indexed " + dictShow.show(v) + ")"});
const ordIndexed = dictOrd => dictOrd;
const ord1Indexed = dictOrd1 => dictOrd1;
const newtypeIndexed = {Coercible0: () => {}};
const monadIndexed = dictMonad => dictMonad;
const ixFunctorIndexed = dictFunctor => ({imap: f => v => dictFunctor.map(f)(v)});
const ixApplyIndexed = dictApply => {
  const $0 = dictApply.Functor0();
  const ixFunctorIndexed1 = {imap: f => v => $0.map(f)(v)};
  return {iapply: v => v1 => dictApply.apply(v)(v1), IxFunctor0: () => ixFunctorIndexed1};
};
const ixBindIndexed = dictBind => {
  const $0 = dictBind.Apply0();
  const $1 = $0.Functor0();
  const ixApplyIndexed1 = (() => {
    const ixFunctorIndexed1 = {imap: f => v => $1.map(f)(v)};
    return {iapply: v => v1 => $0.apply(v)(v1), IxFunctor0: () => ixFunctorIndexed1};
  })();
  return {ibind: v => f => dictBind.bind(v)(a => f(a)), IxApply0: () => ixApplyIndexed1};
};
const ixApplicativeIndexed = dictApplicative => {
  const $0 = dictApplicative.Apply0();
  const $1 = $0.Functor0();
  const ixApplyIndexed1 = (() => {
    const ixFunctorIndexed1 = {imap: f => v => $1.map(f)(v)};
    return {iapply: v => v1 => $0.apply(v)(v1), IxFunctor0: () => ixFunctorIndexed1};
  })();
  return {ipure: x => dictApplicative.pure(x), IxApply0: () => ixApplyIndexed1};
};
const ixMonadIndexed = dictMonad => {
  const $0 = dictMonad.Applicative0();
  const $1 = $0.Apply0();
  const ixApplicativeIndexed1 = (() => {
    const $2 = $1.Functor0();
    const ixFunctorIndexed1 = {imap: f => v => $2.map(f)(v)};
    const ixApplyIndexed1 = {iapply: v => v1 => $1.apply(v)(v1), IxFunctor0: () => ixFunctorIndexed1};
    return {ipure: x => $0.pure(x), IxApply0: () => ixApplyIndexed1};
  })();
  const $2 = dictMonad.Bind1();
  const $3 = $2.Apply0();
  const ixBindIndexed1 = (() => {
    const $4 = $3.Functor0();
    const ixFunctorIndexed1 = {imap: f => v => $4.map(f)(v)};
    const ixApplyIndexed1 = {iapply: v => v1 => $3.apply(v)(v1), IxFunctor0: () => ixFunctorIndexed1};
    return {ibind: v => f => $2.bind(v)(a => f(a)), IxApply0: () => ixApplyIndexed1};
  })();
  return {IxApplicative0: () => ixApplicativeIndexed1, IxBind1: () => ixBindIndexed1};
};
const functorIndexed = dictFunctor => dictFunctor;
const eqIndexed = dictEq => dictEq;
const eq1Indexed = dictEq1 => dictEq1;
const bindIndexed = dictBind => dictBind;
const applyIndexed = dictApply => dictApply;
const applicativeIndexed = dictApplicative => dictApplicative;
export {
  Indexed,
  applicativeIndexed,
  applyIndexed,
  bindIndexed,
  eq1Indexed,
  eqIndexed,
  functorIndexed,
  ixApplicativeIndexed,
  ixApplyIndexed,
  ixBindIndexed,
  ixFunctorIndexed,
  ixMonadIndexed,
  monadIndexed,
  newtypeIndexed,
  ord1Indexed,
  ordIndexed,
  showIndexed
};
