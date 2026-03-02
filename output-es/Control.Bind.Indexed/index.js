const identity = x => x;
const idiscard = dict => dict.idiscard;
const ibind = dict => dict.ibind;
const ibindFlipped = dictIxBind => b => a => dictIxBind.ibind(a)(b);
const ijoin = dictIxBind => m => dictIxBind.ibind(m)(identity);
const ixDiscardUnit = {idiscard: dictIxBind => dictIxBind.ibind};
const composeiKleisliFlipped = dictIxBind => f => g => a => dictIxBind.ibind(g(a))(f);
const composeiKleisli = dictIxBind => f => g => a => dictIxBind.ibind(f(a))(g);
export {composeiKleisli, composeiKleisliFlipped, ibind, ibindFlipped, identity, idiscard, ijoin, ixDiscardUnit};
