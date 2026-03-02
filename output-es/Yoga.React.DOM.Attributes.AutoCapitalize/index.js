import * as Data$dOrd from "../Data.Ord/index.js";
const AutoCapitalize = x => x;
const eqAutoCapitalize = {eq: x => y => x === y};
const ordAutoCapitalize = {compare: x => y => Data$dOrd.ordString.compare(x)(y), Eq0: () => eqAutoCapitalize};
const autoCapitalizeWords = "words";
const autoCapitalizeSentences = "sentences";
const autoCapitalizeOn = "on";
const autoCapitalizeOff = "off";
const autoCapitalizeNone = "none";
const autoCapitalizeCharacters = "characters";
export {
  AutoCapitalize,
  autoCapitalizeCharacters,
  autoCapitalizeNone,
  autoCapitalizeOff,
  autoCapitalizeOn,
  autoCapitalizeSentences,
  autoCapitalizeWords,
  eqAutoCapitalize,
  ordAutoCapitalize
};
