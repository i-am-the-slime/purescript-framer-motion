const imap = dict => dict.imap;
const ivoid = dictIxFunctor => dictIxFunctor.imap(v => {});
const ivoidLeft = dictIxFunctor => f => x => dictIxFunctor.imap(v => x)(f);
const ivoidRight = dictIxFunctor => x => dictIxFunctor.imap(v => x);
export {imap, ivoid, ivoidLeft, ivoidRight};
