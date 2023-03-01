# old bindings: https://github.com/ym-han/knausj_talon/blob/057634fa2cffb1be82776339da791c1836fd7dfc/text/generic_editor.talon
# inspired also by Wen Kokke's version (https://github.com/wenkokke/talon-user/blob/78bf5c91333d628481e8f386ff3f454b224c6402/core/edit/edit.talon#L146)



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

step: edit.word_right()

head: edit.line_start()

tail: edit.line_end()


page up: edit.page_up()

page down: edit.page_down()

header: edit.file_start()

tailor: edit.file_end()


# Zoom

zoom in: edit.zoom_in()

zoom out: edit.zoom_out()



# Insert

slurp: edit.line_insert_up()

pour: edit.line_insert_down()

dup line: edit.line_clone()

dup it: edit.selection_clone()



# Select

cork: edit.select_none()

grab up: edit.extend_up()

grab down: edit.extend_down()

grab left: edit.extend_left()

grab right: edit.extend_right()


take word: edit.select_word()

take line: edit.select_line()


grab (moon | word left): edit.extend_word_left()

grab (step | word right): edit.extend_word_right()



select all: edit.select_all()



select up: edit.extend_line_up()

select down: edit.extend_line_down()



grab head: edit.extend_line_start()

grab tail: edit.extend_line_end()



# Indent
indent it: edit.indent_more()

out dent: edit.indent_less()


# Delete 

wipe gore:
    edit.right()
    edit.delete()

wipe word:
    edit.select_word()
    edit.delete()
#clear word: edit.delete_word()

wipe (moon | word left):
    edit.extend_word_left()
    edit.delete()

wipe (step | word right):
    edit.extend_word_right()
    edit.delete()

(snip | ex) line: edit.delete_line()

snip up:
    edit.extend_line_up()
    edit.delete()

snip down:
    edit.extend_line_down()
    edit.delete()

ex left:
    edit.extend_line_start()
    edit.delete()

ex right:
    edit.extend_line_end()
    edit.delete()


ex all up:
    edit.extend_file_start()
    edit.delete()

ex down:
    edit.extend_file_end()
    edit.delete()

snip all:
    edit.select_all()
    edit.delete()

snip header:
    edit.extend_file_start()
    edit.delete()

snip tailor:
    edit.extend_file_end()
    edit.delete()


# Copy

cop it: edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy all:
    edit.select_all()
    edit.copy()

copy (moon | word left):
    edit.extend_word_left()
    edit.copy()

copy (step | word right):
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()


copy head:
    edit.extend_line_start()
    edit.copy()

copy tail:
    edit.extend_line_end()
    edit.copy()

copy header:
    edit.extend_file_start()
    edit.copy()

copy tailor:
    edit.extend_file_end()
    edit.copy()


# Cut


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


