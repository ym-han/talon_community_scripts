code.language: haskell
-
tag(): user.code_function
tag(): user.code_library
tag(): user.code_operator
tag(): user.code_type

settings():
    user.code_function_catch_all = "CAMEL_CASE"
    user.code_library_catch_all = "CAPITALIZE_ALL_WORDS,DOT_SEPARATED"
    user.code_type_catch_all = "PASCAL_CASE"


dot hs: ".hs"

##############################################
######### Pragmas ############################
##############################################

pragma wall: "{{-# OPTIONS_GHC -Wall #-}}"
# enables all warnings

common pragmas: "{{-# LANGUAGE LambdaCase, GeneralizedNewtypeDeriving, OverloadedStrings, TypeApplications, ExistentialQuantification, UnicodeSyntax, NegativeLiterals, ImportQualifiedPost #-}}"
pragma scoped type variables: "{{-# LANGUAGE ScopedTypeVariables #-}}"
pragma lambda case: "{{-# LANGUAGE LambdaCase #-}}"
pragma overloaded strings: "{{-# LANGUAGE OverloadedStrings #-}}"
pragma type applications: "{{-# LANGUAGE TypeApplications #-}}"
pragma unicode syntax: "{{-# LANGUAGE UnicodeSyntax #-}}"
pragma existential quantification: "{{-# LANGUAGE ExistentialQuantification #-}}"


pragma stand alone deriving: "{{-# LANGUAGE StandaloneDeriving #-}}"

disable import warning pragma: "{{-# OPTIONS_GHC -fno-warn-unused-imports -Wno-error=unused-imports #-}}"


set type applications: ":set -XTypeApplications\n"
set print for all: ":set -fprint-explicit-foralls\n"

state module where:
    insert("module  where")
    key(left:6)
state import: "import "

import text: "import Data.Text (Text)\nimport Data.Text qualified as T\n"
import data map: "import qualified Data.Map as M"

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

# useful commands for adding new cases
add constructor:
    edit.line_insert_down()
    "| "

# special cases for #user.code_type
type list:
    "[]"
    edit.left()


# equivalent of snippet "annotated expression"
has type: " :: "
## TO DO for future: too tired to do this properly right now

#has type <user.code_type>: " :: {code_type}"

#has type <user.code_type> over: " :: {code_type}"

#into {user.code_type}:
#    user.insert_cursor(" -> {code_type}[|]")

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
