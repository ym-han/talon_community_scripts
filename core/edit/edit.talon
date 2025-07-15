# old bindings: https://github.com/ym-han/knausj_talon/blob/057634fa2cffb1be82776339da791c1836fd7dfc/text/generic_editor.talon
# inspired also by Wen Kokke's version (https://github.com/wenkokke/talon-user/blob/78bf5c91333d628481e8f386ff3f454b224c6402/core/edit/edit.talon#L146)


# Compound of action(select, clear, copy, cut, paste, etc.) and modifier(word, line, etc.) commands for editing text.
# eg: "select line", "clear all"
# For overriding or creating aliases for specific actions, this function will
# also accept strings, e.g. `user.edit_command("delete", "wordLeft")`.
# See edit_command_modifiers.py to discover the correct string for the modify argument,
# and `edit_command_actions.py` `simple_action_callbacks` to find strings for the action argument.
<user.edit_action> <user.edit_modifier>: user.edit_command(edit_action, edit_modifier)


# Find
scout it: edit.find()

scout next: edit.find_next()
scout prev: edit.find_previous()


# Save

save it: edit.save()
file save all: edit.save_all()


# Undo/Redo

nope that: edit.undo()
redo: edit.redo()


# Navigation

^<number_small> before:
    edit.word_left()
    repeat(number_small - 1)

^<number_small> after:
    edit.word_right()
    repeat(number_small - 1)

goal: edit.left()
gore: edit.right()

goop: edit.up()
gown: edit.down()

moon: edit.word_left()
steppy: edit.word_right()

head: edit.line_start()
tail: edit.line_end()


page up: edit.page_up()
page down: edit.page_down()

header: edit.file_start()
tailor: edit.file_end()


# Zoom

zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()


# Insert

slurp: edit.line_insert_up()
pour: edit.line_insert_down()

# dup line: edit.line_clone()
dup it: edit.selection_clone()



# Select

cork none: edit.select_none()

select all: edit.select_all()

select up: edit.extend_line_up()
select down: edit.extend_line_down()

grab up: edit.extend_up()
grab down: edit.extend_down()

# go left, go left left down, go 5 left 2 down
# go word left, go 2 words right
go <user.navigation_step>+: user.perform_navigation_steps(navigation_step_list)

grab left: edit.extend_left()
grab right: edit.extend_right()


take word: edit.select_word()
take line: edit.select_line()


grab (moon | word left): edit.extend_word_left()
grab (step | word right): edit.extend_word_right()


# Indentation
indent [more]: edit.indent_more()
(indent less | out dent): edit.indent_less()

# Copy
copy that: edit.copy()

# Cut
cut that: edit.cut()

# Paste
(pace | paste) (that | it): edit.paste()
(pace | paste) enter:
    edit.paste()
    key(enter)
paste match: edit.paste_match_style()

cut it: edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut (moon | word left):
    edit.extend_word_left()
    edit.cut()

cut (step | word right):
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

cut head:
    edit.extend_line_start()
    edit.cut()

cut tail:
    edit.extend_line_end()
    edit.cut()

cut all:
    edit.select_all()
    edit.cut()

cut header:
    edit.extend_file_start()
    edit.cut()

cut tailor:
    edit.extend_file_end()
    edit.cut()


# Paste

paste it: edit.paste()

paste match: edit.paste_match_style()
