import * as Control$dCategory from "../Control.Category/index.js";
import * as Control$dSemigroupoid from "../Control.Semigroupoid/index.js";
import * as Record$dUnsafe from "../Record.Unsafe/index.js";
import * as Type$dProxy from "../Type.Proxy/index.js";
const EventFn = x => x;
const unsafeEventFn = EventFn;
const semigroupoidBuilder = Control$dSemigroupoid.semigroupoidFn;
const mergeNil = {mergeImpl: v => v1 => v2 => ({})};
const mergeImpl = dict => dict.mergeImpl;
const mergeCons = dictIsSymbol => () => () => () => () => dictMerge => (
  {
    mergeImpl: v => fns => a => Record$dUnsafe.unsafeSet(dictIsSymbol.reflectSymbol(Type$dProxy.Proxy))(Record$dUnsafe.unsafeGet(dictIsSymbol.reflectSymbol(Type$dProxy.Proxy))(fns)(a))(dictMerge.mergeImpl(Type$dProxy.Proxy)(Record$dUnsafe.unsafeDelete(dictIsSymbol.reflectSymbol(Type$dProxy.Proxy))(fns))(a))
  }
);
const merge = () => dictMerge => dictMerge.mergeImpl(Type$dProxy.Proxy);
const handler_ = x => v => x();
const handler = v => cb => x => cb(v(x))();
const categoryBuilder = Control$dCategory.categoryFn;
const syntheticEvent = x => x;
export {EventFn, categoryBuilder, handler, handler_, merge, mergeCons, mergeImpl, mergeNil, semigroupoidBuilder, syntheticEvent, unsafeEventFn};
