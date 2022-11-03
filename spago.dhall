{-
Welcome to a Spago project!
You can edit this file as you like.

Need help? See the following resources:
- Spago documentation: https://github.com/purescript/spago
- Dhall language tour: https://docs.dhall-lang.org/tutorials/Language-Tour.html

When creating a new Spago project, you can use
`spago init --no-comments` or `spago init -C`
to generate this file without the comments in this block.
-}
{ name = "framer-motion"
, repository = "https://github.com/i-am-the-slime/purescript-framer-motion.git"
, license = "MIT"
, dependencies =
  [ "aff"
  , "aff-promise"
  , "arrays"
  , "effect"
  , "foreign"
  , "foreign-object"
  , "heterogeneous"
  , "literals"
  , "maybe"
  , "nullable"
  , "prelude"
  , "react-basic"
  , "react-basic-dom"
  , "react-basic-hooks"
  , "record"
  , "tuples"
  , "two-or-more"
  , "typelevel-prelude"
  , "unsafe-coerce"
  , "untagged-union"
  , "web-dom"
  , "web-events"
  , "web-uievents"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
