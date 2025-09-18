tag: user.javascript
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_keywords
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"
 
(op | is) equals: " === "
(op | is) not equal: " !== "
op nullish: " ?? "

new func: 
    insert("function () {\n")
    key(left:5)




begin code: "```javascript\n"
end code: "```"

begin source j s: "#+BEGIN_SRC javascript"
end source: "#+END_SRC"

is equal: " === "
not equal: " !== "

math floor: "Math.floor("
math ceiling: "Math.ceil("
math random: "Math.random()"
math log: "Math.log("
math log ten: "Math.log10("
math power: "Math.pow("
math sign: "Math.sign("
math abs: "Math.abs("

state js: "javascript"
state this: "this"
state class: "class "
state const: "const "
state let: "let "
state var: "var "

state export: "export "

state async: "async "

state await: "await "



state symbol: "Symbol"

state switch: 
    insert("switch () {")
    key(left:3)

#dot reduce: 
#    insert(".reduce((acc, curr) => ..., init)")
#    key(left:7)

#dot reduce with index:
#    insert(".reduce((acc, curr, currIdx) => ..., init)")
#    key(left:7)    

vee go <number>:
    key(esc)
    insert("{number}")
    key(shift-g) 

#vee back: key(ctrl-o)

#copy <number>:  
#    key(esc)
#    insert("{number}")
#    key(shift-g)
#    insert("yy")
    
 
#bring <number>:
#    key(esc)
#    insert("mz")
#    insert("{number}")
#    key(shift-g)
#    insert("yy")
#    insert("'z")
#    key(p)



console log: 
    insert("console.log();")
    key(left:2)

state spread: "..."

state input: "INPUT: "
state output: "OUTPUT: "
state examples: "EGS: "
state algo: "ALGO: \n"

dot for each: ".forEach("

dot split: ".split("
dot split to chars: ".split('')"

dot to upper case: ".toUpperCase()"
dot to lower case: ".toLowerCase()"

# for code signal
#palette: key(F1)


insert mode: 
    key(esc)
    key(i)

state require readline: "const readline = require('readline-sync');"
readline [dot] question: "readline.question();"
readline [dot] prompt: "readline.prompt();"

dot replace all: ".replaceAll("

dot concat: ".concat("

dot push: ".push("
dot pop: ".pop()"
dot splice: ".splice("
dot slicey: ".slice("
dot slice reverse: ".slice().reverse()"
dot reverse: ".reverse()"


run test: "node test.js\n"


number is nan: "Number.isNaN("


dot has own property: ".hasOwnProperty("

for value of: 
    insert("for ( of ) {")
    key(left:7)

for key value of object: 
    insert("""for (const [key, value] of Object.entries()) {\n""")
    key(left:5)

for pair of object entries: 
    insert("""for (const kvPair of Object.entries()) {\n""")
    key(left:5)

object is: "Object.is("
object assign: "Object.assign("
object keys: "Object.keys("
object keys includes: 
    insert("Object.keys().includes")
    key(left:10)

object freeze: "Object.freeze("
object create: "Object.create("
object entries: "Object.entries("
object values: "Object.values("


begin block comment: "/*"
end block comment: "*/"


interpol: "${"

run it: key(cmd-enter)


#lint install: "npm install eslint@7.12.1 eslint-cli babel-eslint --save-dev"
# Note that you must install these 3 packages for every project where you need to use ESLint
# can ignore the warning about babel-eslint no longer receiving updates.

#lint version: "npx eslint -v"
#e lint file: "npx eslint "
#e lint fix: "eslint --fix "

pragma use strict: insert('"use strict";\n')

script module: insert('<script lang="ts" context="module">')