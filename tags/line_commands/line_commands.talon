tag: user.line_commands
-
#Aug 27 notes: These do not seem to work in the browser

#this defines some common line commands. More may be defined that are ide-specific.
go <number>: edit.jump_line(number)
go <number> end:
    edit.jump_line(number)
    edit.line_end()
comment [line] <number>:
    user.select_range(number, number)
    code.toggle_comment()
comment <number> until <number>:
    user.select_range(number_1, number_2)
    code.toggle_comment()
ex line <number>:
    edit.jump_line(number)
    user.select_range(number, number)
    edit.delete()
ex <number> until <number>:
    user.select_range(number_1, number_2)
    edit.delete()
copy line <number>:
    user.select_range(number, number)
    edit.copy()
copy <number> until <number>:
    user.select_range(number_1, number_2)
    edit.copy()
cut [line] <number>:
    user.select_range(number, number)
    edit.cut()
cut [line] <number> until <number>:
    user.select_range(number_1, number_2)
    edit.cut()
(paste | replace) <number> until <number>:
    user.select_range(number_1, number_2)
    edit.paste()
(select | cell | sell) [line] <number>: user.select_range(number, number)
(select | cell | sell) <number> until <number>: user.select_range(number_1, number_2)
row <number>: user.select_range(number, number)
row <number> till <number>: user.select_range(number_1, number_2)
indent that: edit.indent_more()
tab [line] <number>:
    edit.jump_line(number)
    edit.indent_more()
tab <number> until <number>:
    user.select_range(number_1, number_2)
    edit.indent_more()
dedent that: edit.indent_less()
dedent [line] <number>:
    user.select_range(number, number)
    edit.indent_less()
dedent <number> until <number>:
    user.select_range(number_1, number_2)
    edit.indent_less()
drag [line] down: edit.line_swap_down()
drag [line] up: edit.line_swap_up()
drag up [line] <number>:
    user.select_range(number, number)
    edit.line_swap_up()
drag up <number> until <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_up()
drag down [line] <number>:
    user.select_range(number, number)
    edit.line_swap_down()
drag down <number> until <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_down()
clone [line] <number>: user.line_clone(number)

select camel left: user.extend_camel_left()
select camel right: user.extend_camel_right()
go camel left: user.camel_left()
go camel right: user.camel_right()
