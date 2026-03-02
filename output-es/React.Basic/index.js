import {contextConsumer, contextProvider, createContext, element, elementKeyed, empty, fragment, keyed} from "./foreign.js";
const semigroupJSX = {append: a => b => fragment([a, b])};
const provider = context => value => children => element(contextProvider(context))({value, children});
const monoidJSX = {mempty: empty, Semigroup0: () => semigroupJSX};
const consumer = context => children => element(contextConsumer(context))({children});
export {consumer, monoidJSX, provider, semigroupJSX};
export * from "./foreign.js";
