const Render = x => x;
const unsafeRenderEffect = Render;
const unsafeHook = Render;
const semigroupRender = dictTypeEquals => dictSemigroup => (
  {
    append: v => v1 => () => {
      const a$p = v();
      const a$p$1 = v1();
      return dictSemigroup.append(a$p)(a$p$1);
    }
  }
);
const monoidRender = dictTypeEquals => dictMonoid => {
  const $0 = dictMonoid.Semigroup0();
  const semigroupRender2 = {
    append: v => v1 => () => {
      const a$p = v();
      const a$p$1 = v1();
      return $0.append(a$p)(a$p$1);
    }
  };
  return {
    mempty: (() => {
      const $1 = dictMonoid.mempty;
      return () => $1;
    })(),
    Semigroup0: () => semigroupRender2
  };
};
const ixFunctorRender = {
  imap: f => v => () => {
    const a$p = v();
    return f(a$p);
  }
};
const ixApplyRender = {
  iapply: v => v1 => () => {
    const f$p = v();
    const a$p = v1();
    return f$p(a$p);
  },
  IxFunctor0: () => ixFunctorRender
};
const ixBindRender = {
  ibind: v => f => () => {
    const a = v();
    return f(a)();
  },
  IxApply0: () => ixApplyRender
};
const ixApplicativeRender = {ipure: a => () => a, IxApply0: () => ixApplyRender};
const ixMonadRender = {IxApplicative0: () => ixApplicativeRender, IxBind1: () => ixBindRender};
const functorRender = {
  map: f => v => () => {
    const a$p = v();
    return f(a$p);
  }
};
const discard = dictIxBind => dictIxBind.ibind;
const coerceHook = () => v => v;
const bind = dictIxBind => dictIxBind.ibind;
const applyRender = dictTypeEquals => (
  {
    apply: v => v1 => () => {
      const f$p = v();
      const a$p = v1();
      return f$p(a$p);
    },
    Functor0: () => functorRender
  }
);
const bindRender = dictTypeEquals => {
  const applyRender1 = {
    apply: v => v1 => () => {
      const f$p = v();
      const a$p = v1();
      return f$p(a$p);
    },
    Functor0: () => functorRender
  };
  return {
    bind: v => f => () => {
      const a = v();
      return f(a)();
    },
    Apply0: () => applyRender1
  };
};
const applicativeRender = dictTypeEquals => {
  const applyRender1 = {
    apply: v => v1 => () => {
      const f$p = v();
      const a$p = v1();
      return f$p(a$p);
    },
    Functor0: () => functorRender
  };
  return {pure: a => () => a, Apply0: () => applyRender1};
};
const monadRender = dictTypeEquals => {
  const applicativeRender1 = applicativeRender(dictTypeEquals);
  const bindRender1 = bindRender(dictTypeEquals);
  return {Applicative0: () => applicativeRender1, Bind1: () => bindRender1};
};
export {
  Render,
  applicativeRender,
  applyRender,
  bind,
  bindRender,
  coerceHook,
  discard,
  functorRender,
  ixApplicativeRender,
  ixApplyRender,
  ixBindRender,
  ixFunctorRender,
  ixMonadRender,
  monadRender,
  monoidRender,
  semigroupRender,
  unsafeHook,
  unsafeRenderEffect
};
