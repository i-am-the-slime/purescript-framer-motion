import * as $runtime from "../runtime.js";
const ipure = dict => dict.ipure;
const iunless = dictIxApplicative => v => v1 => {
  if (!v) { return v1; }
  if (v) { return dictIxApplicative.ipure(); }
  $runtime.fail();
};
const iwhen = dictIxApplicative => v => v1 => {
  if (v) { return v1; }
  return dictIxApplicative.ipure();
};
export {ipure, iunless, iwhen};
