# new line: "\n"
double dash: "--"
triple dash: "--"
triple quote: "'''"
(code block | triple back tick): insert("```\n")
code block lam four: insert("```lam4\n")
code block haskell: insert("```haskell\n")
code block javascript: insert("```javascript\n")
code block typescript: insert("```typescript\n")

(dot dot | dotdot): ".."
ellipses: "..."
semi space: "; "

coalgap: ": "
spamma: ", "

sym reversed arrow: "<-"
sym arrow: "->"
sym dub arrow: "=>"

carriage return: "\\r"
line feed: "\\r\\n"

### empty <...>
empty round: "()"
empty square: "[]"
empty curly: "{}"
empty diamond: "<>"
empty quad: user.insert_between('"', '"')
empty twin: "''"
empty escaped quad: '\\"\\"'
empty escaped twin: "\\'\\'"
empty escaped round: "\\(\\)"
empty escaped curly: "\\{{\\}}"

### inside <...>
inside square: user.insert_between("[", "]")
inside percent: user.insert_between("%", "%")
inside (quotes | string): user.insert_between("'", "'")
inside (double quotes | dub quotes): user.insert_between('"', '"')
inside (graves | ber ticks): user.insert_between("`", "`")
inside (curly | braces): user.insert_between("{", "}")

# Do I really want these exceptions?
(round | inside parens): user.insert_between("(", ")")
diamond: user.insert_between("<", ">")
quad: user.insert_between('"', '"')
twin: user.insert_between("'", "'")

tween <user.symbol_key>: user.insert_between("{symbol_key}", "{symbol_key}")


escaped quad: user.insert_between('\\"', '\\"')
escaped twin: user.insert_between("\\'", "\\'")
escaped round: user.insert_between("\\(", "\\)")
escaped curly: user.insert_between("\\{{", "\\}}")

### <...> that
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(curly | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(round | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
twin that:
    text = edit.selected_text()
    user.paste("'{text}'")
(quad | dub quote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(ber tick | back tick | skis) that:
    text = edit.selected_text()
    user.paste("`{text}`")
big skis that:
    text = edit.selected_text()
    user.paste("```\n{text}```")


big round:
    insert("()")
    key(left enter)
big square:
    insert("[]")
    key(left enter)
big curly:
    insert("{}")
    key(left enter)


slicer:
    edit.line_end()
    key(enter)
    insert("- ")

slider:
    edit.line_end()
    insert(",")
    key(enter)

breaker:
    edit.line_end()
    insert(" {")
    key(enter)

end gap:
    edit.line_end()
    key(space)


# Legacy: not sure if need these
arg wrap:
  edit.line_start()
  insert("(")
  edit.line_end()
  insert(")")

(skis | ber tick) wrap:
  edit.line_start()
  insert("`")
  edit.line_end()
  insert("`")

brace wrap:
  edit.line_start()
  insert("{")
  edit.line_end()
  insert("}")
