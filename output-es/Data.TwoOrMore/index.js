import * as Data$dArray from "../Data.Array/index.js";
import * as Data$dEq from "../Data.Eq/index.js";
import * as Data$dFoldable from "../Data.Foldable/index.js";
import * as Data$dFoldableWithIndex from "../Data.FoldableWithIndex/index.js";
import * as Data$dFunctor from "../Data.Functor/index.js";
import * as Data$dFunctorWithIndex from "../Data.FunctorWithIndex/index.js";
import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dOrd from "../Data.Ord/index.js";
import * as Data$dSemigroup from "../Data.Semigroup/index.js";
import * as Data$dShow from "../Data.Show/index.js";
import * as Data$dTraversable from "../Data.Traversable/index.js";
import * as Data$dTuple from "../Data.Tuple/index.js";
const traversableTwoOrMore = Data$dTraversable.traversableArray;
const showTwoOrMore = dictShow => ({show: Data$dShow.showArrayImpl(dictShow.show)});
const semigroupTwoOrMore = Data$dSemigroup.semigroupArray;
const ordTwoOrMore = dictOrd => Data$dOrd.ordArray(dictOrd);
const functorWithIndexIntTwoOrM = Data$dFunctorWithIndex.functorWithIndexArray;
const functorTwoOrMore = Data$dFunctor.functorArray;
const foldableWithIndexIntTwoOr = Data$dFoldableWithIndex.foldableWithIndexArray;
const foldableTwoOrMore = Data$dFoldable.foldableArray;
const eqTwoOrMore = dictEq => ({eq: Data$dEq.eqArrayImpl(dictEq.eq)});
const zip = v => v1 => Data$dArray.zipWithImpl(Data$dTuple.Tuple, v, v1);
const twoOrMore = first => second => rest => [first, second, ...rest];
const toArray = v => v;
const pushFront = x => v => [x, ...v];
const pushBack = x => v => Data$dArray.snoc(v)(x);
const neck = v => v[1];
const tail = v => [v[1], ...Data$dArray.sliceImpl(2, v.length, v)];
const mapWithIndex = f => v => Data$dFunctorWithIndex.mapWithIndexArray(f)(v);
const length = v => v.length;
const last = v => v[v.length - 1 | 0];
const index = v => $0 => {
  if ($0 >= 0 && $0 < v.length) { return Data$dMaybe.$Maybe("Just", v[$0]); }
  return Data$dMaybe.Nothing;
};
const head = v => v[0];
const toNonEmptyArray = twoOrMore$p => [twoOrMore$p[0], twoOrMore$p[1], ...Data$dArray.sliceImpl(2, twoOrMore$p.length, twoOrMore$p)];
const fromArray = xs => {
  if (xs.length >= 2) { return Data$dMaybe.$Maybe("Just", xs); }
  return Data$dMaybe.Nothing;
};
const findIndex = f => v => Data$dArray.findIndexImpl(Data$dMaybe.Just, Data$dMaybe.Nothing, f, v);
export {
  eqTwoOrMore,
  findIndex,
  foldableTwoOrMore,
  foldableWithIndexIntTwoOr,
  fromArray,
  functorTwoOrMore,
  functorWithIndexIntTwoOrM,
  head,
  index,
  last,
  length,
  mapWithIndex,
  neck,
  ordTwoOrMore,
  pushBack,
  pushFront,
  semigroupTwoOrMore,
  showTwoOrMore,
  tail,
  toArray,
  toNonEmptyArray,
  traversableTwoOrMore,
  twoOrMore,
  zip
};
