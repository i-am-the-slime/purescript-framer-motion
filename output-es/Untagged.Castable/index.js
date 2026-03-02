import * as Unsafe$dCoerce from "../Unsafe.Coerce/index.js";
const castableRecordRLNil = {};
const castableRecordRLConsOptional = () => () => ({});
const castableRecordRLConsDirect = () => ({});
const castableRecordRLConsCastable = () => () => ({});
const castableRecord = () => () => () => ({});
const castableIntNumber = {};
const castableForeign = {};
const castableCharString = {};
const cast = () => Unsafe$dCoerce.unsafeCoerce;
export {
  cast,
  castableCharString,
  castableForeign,
  castableIntNumber,
  castableRecord,
  castableRecordRLConsCastable,
  castableRecordRLConsDirect,
  castableRecordRLConsOptional,
  castableRecordRLNil
};
