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

modulo: " mod "

(let | state let): "let "

(spread | state spread): ".."

(into | op into): " -> "

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

state first: "fst"
state second: "snd"
put string line: "putStrLn" 