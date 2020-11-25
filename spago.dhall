{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "foreign-callbacks"
, dependencies = [ "console", "effect", "psci-support", "assert" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
