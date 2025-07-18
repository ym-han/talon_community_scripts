code.language: stata
-
tag(): user.code_imperative

tag(): user.code_comment_block_c_like
tag(): user.code_comment_block
tag(): user.code_comment_line
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_math

settings():
    user.code_private_function_formatter = "SNAKE_CASE"

arg {user.code_parameter_name}: user.code_insert_named_argument(code_parameter_name)

state for val: user.insert_snippet_by_name("forLoopStatement")

# alternative to saying ""state import""
s s c install: user.code_import()

s s c install <user.code_libraries>: user.code_insert_library(code_libraries, "")
