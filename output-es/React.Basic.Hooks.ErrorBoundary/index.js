import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import * as React$dBasic from "../React.Basic/index.js";
import {errorBoundary_} from "./foreign.js";
const mkErrorBoundary = name => {
  const $0 = errorBoundary_(name);
  return () => {
    const c = $0();
    const $1 = React$dBasic.element(c);
    return x => $1({render: v => x({error: Data$dNullable.nullable(v.error, Data$dMaybe.Nothing, Data$dMaybe.Just), dismissError: v.dismissError})});
  };
};
export {mkErrorBoundary};
export * from "./foreign.js";
