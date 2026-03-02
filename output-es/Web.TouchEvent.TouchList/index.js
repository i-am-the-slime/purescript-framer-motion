import * as Data$dMaybe from "../Data.Maybe/index.js";
import * as Data$dNullable from "../Data.Nullable/index.js";
import {_item, length} from "./foreign.js";
const item = i => l => Data$dNullable.nullable(_item(i, l), Data$dMaybe.Nothing, Data$dMaybe.Just);
export {item};
export * from "./foreign.js";
