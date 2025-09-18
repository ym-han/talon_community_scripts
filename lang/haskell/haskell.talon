mode: command
and mode: user.haskell
mode: command
and mode: user.auto_lang
and code.language: haskell
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

dot hs: ".hs"

pragma wall: "{{-# OPTIONS_GHC -Wall #-}}"
# enables all warnings

# Common pragma bundle (includes ImportQualifiedPost for modern qualified imports)
common pragmas: "{{-# LANGUAGE LambdaCase, GeneralizedNewtypeDeriving, OverloadedStrings, TypeApplications, ExistentialQuantification, UnicodeSyntax, NegativeLiterals, ImportQualifiedPost #-}}"

# Individual pragmas
pragma scoped type variables: "{{-# LANGUAGE ScopedTypeVariables #-}}"
pragma lambda case: "{{-# LANGUAGE LambdaCase #-}}"
pragma overloaded strings: "{{-# LANGUAGE OverloadedStrings #-}}"
pragma type applications: "{{-# LANGUAGE TypeApplications #-}}"
pragma type families: "{{-# LANGUAGE TypeFamilies #-}}"
pragma unicode syntax: "{{-# LANGUAGE UnicodeSyntax #-}}"
pragma existential quantification: "{{-# LANGUAGE ExistentialQuantification #-}}"
pragma stand alone deriving: "{{-# LANGUAGE StandaloneDeriving #-}}"

set type applications: ":set -XTypeApplications\n"
set print for all: ":set -fprint-explicit-foralls\n"

state module where:
    insert("module  where")
    key(left:6)
state import: "import "

import text: "import Data.Text (Text)\nimport Data.Text qualified as T\n"
import data map: "import qualified Data.Map as M"
import placeholders: "import Development.Placeholders\n"


haddock block: "{- |\n -}"
haddock comment: "-- | "
modulo: " mod "

slash case: insert("\\case")

and then: "& "


# ---------------------------- just for LE transpilation project
print rules$: "prl "



# ----- Ops -----------------
op into: " -> "
op choice: " <|> "

op mappend: " <> "

op bind: " >>= "
op reverse bind: " =<< "
op f map: " <$> "
op ap: " <*> "
op ap right: " *> "
op ap left: " <* "
op pipe: " |> "

state f map: "fmap"

## Function type signatures
is type {user.code_type}:
    user.insert_cursor(" :: {code_type}[|]")
into {user.code_type}:
    user.insert_cursor(" -> {code_type}[|]")

## Function bodies
body <user.text>: user.haskell_function_body(text)


^funky <user.text>$: user.code_default_function(text)
^pro funky <user.text>$: user.code_protected_function(text)
^pub funky <user.text>$: user.code_public_function(text)

# Type annotations
has type: " :: "

state module: "module"

state let: "let "

state g h c i: "ghci"

state bool: "Bool"
state uncurry: "uncurry "

state new type: "newtype "
state data: "data "


state first: "fst "
state second: "snd "
put string line: "putStrLn "

state lift: "lift "

state maybe tee: "MaybeT"
state either tee: "EitherT"
state reader tee: "ReaderT"
state i o: "IO"
state i o unit: "IO ()"

state do:
    insert("do")
    key(esc)
    key(enter)

state return: "return "

state pure: "pure"

state set of: "setOf "

state folded: "folded "

fun app: " $ "

optics compose: "% "

state deriving default: "deriving stock (Eq, Ord, Show, Generic)"

# in cabal repl you don't want to :load things, cabal is already doing that for you. To import a loaded module in GHCi and access all the internal definitions and imports you can do :m + *MyModule.
scope module: insert(":m + *")

state todo [<user.text>]:
  insert("$(todo )")
  key(left: 1)
  sleep(10ms)
  insert(text or "")
state not implemented: "$notImplemented"
