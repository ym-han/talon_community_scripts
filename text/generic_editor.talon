find it:
    edit.find()

next one:   
    edit.find_next()

go word left:
    edit.word_left()

go word right:
    edit.word_right()


^<number_small> before:
    edit.word_left()
    repeat(number_small - 1)

^<number_small> after:
    edit.word_right()
    repeat(number_small - 1)

[<number_small>] left:
    user.left(number_small or 1)

[<number_small>] right:
    user.right(number_small or 1)

[<number_small>] up:
    user.up(number_small or 1)

[<number_small>] down:
    user.down(number_small or 1)

head:
    edit.line_start()

tail:
    edit.line_end()

go way left:
    edit.line_start()
    edit.line_start()

go way right:
    edit.line_end()

go way down:
    edit.file_end()

go way up:
    edit.file_start()
    
go bottom:
    edit.file_end()
    
go top:
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# ---------- selecting
select line:
    edit.select_line()

take all:
    edit.select_all()

extend left:
    edit.extend_left()

extend right:
    edit.extend_right()

extend up:
    edit.extend_line_up()

extend down:
    edit.extend_line_down()

take word:
    edit.select_word()

extend wester:
    edit.extend_word_left()

extend easter:
    edit.extend_word_right()

take to head:
    edit.extend_line_start()

take to tail:
    edit.extend_line_end()

take all up:
    edit.extend_file_start()

take all down:
    edit.extend_file_end()

# extend selection __to__ previous / next word
^<number_small> befores:
    edit.extend_word_left()
    repeat(number_small - 1)

^<number_small> afters:
    edit.extend_word_right()
    repeat(number_small - 1)



# ---------- editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# ---------- deleting
snip line:
    edit.delete_line()

drill:
    key(delete)

snip up:
    edit.extend_line_up()
    edit.delete()

snip down:
    edit.extend_line_down()
    edit.delete()

junk word:
    edit.delete_word()

junk left:
    edit.word_left()
    key(right)
    edit.select_word()
    edit.delete()

junk right:
    edit.word_right()
    key(left)
    edit.select_word()
    edit.delete()


snip till previous:
    edit.extend_word_left()
    edit.delete()

snip till next:
    edit.extend_word_right()
    edit.delete()

#clear way left:
ex left:
    edit.extend_line_start()
    edit.delete()

ex right:
    edit.extend_line_end()
    edit.delete()

ex up:
    edit.extend_file_start()
    edit.delete()

ex down:
    edit.extend_file_end()
    edit.delete()

clear all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()

copy left: 
    edit.extend_line_start()
    edit.copy()
    key(right)

copy right:
    edit.extend_line_end()
    edit.copy()
    key(left)


copy word:
    edit.select_word()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()

cut left: 
    edit.extend_line_start()
    edit.copy()
    key(delete)

cut right:
    edit.extend_line_end()
    edit.copy()
    key(delete)


cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

# ----- Text insertions -----
make to do: "TODO"

