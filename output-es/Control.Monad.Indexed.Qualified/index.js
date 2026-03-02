// | Use this module to rebind `do`/`ado` notation via Qualified Do/Ado.
// |
// | For example, here's how one would rebind do notation.
// | ```purescript
// | import Control.Monad.Indexed.Qualified as Ix
// |
// | f = Ix.do -- remaps do notation to use `ibind` and `idiscard`
// |   x <- foo
// |   bar
// |   I.pure y
// | ```
// |
// | For example, here's how one would rebind ado notation.
// | ```purescript
// | import Control.Monad.Indexed.Qualified as Ix
// |
// | g = Ix.ado -- remaps do notation to use `iapply` and `imap`
// |  x <- foo
// |  y <- bar
// |  in x + y
// | ```
const pure = dictIxApplicative => dictIxApplicative.ipure;
const map = dictIxFunctor => dictIxFunctor.imap;
const discard = dictIxBind => dictIxDiscard => dictIxDiscard.idiscard(dictIxBind);
const bind = dictIxMonad => dictIxMonad.IxBind1().ibind;
const apply = dictIxApply => dictIxApply.iapply;
export {apply, bind, discard, map, pure};
