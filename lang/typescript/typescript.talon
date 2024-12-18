code.language: typescript
code.language: typescriptreact
-

type union [<user.code_type>]: " | {code_type or ''}"
type intersect [<user.code_type>]: " & {code_type or ''}"

state type: user.insert_between("type ", " = ")
state extends: "extends"

state export interface: "export interface "

as const: " as const"

state abstract class: "abstract class"

state new: "new "
