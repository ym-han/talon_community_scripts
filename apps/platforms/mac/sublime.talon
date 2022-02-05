app: Sublime Text
app: Code

# Annoying thing to note: the key("right:3") syntax --- can't have a space between right and 3
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.snippets
tag(): user.splits
tag(): user.tabs
#tag(): terminal

comment out: key(cmd-/)
pallete: key(cmd-shift-p)

# ==== TABS
#new tab: key(cmd-n)
#tab left: app.tab_previous()
#tab right: app.tab_next()

#close tab: app.tab_close()
reopen tab: app.tab_reopen()

# ==== STRING MANIPULATION
make string:
  key(cmd-d)
  key(left)
  insert('"')
  key(cmd-d)
  key(right)
  insert('"')

make single string:
  key(cmd-d)
  key(left)
  insert("'")
  key(cmd-d)
  key(right)
  insert("'")

make upper: 
  key(cmd-k)
  key(cmd-u)

make lower: 
  key(cmd-k)
  key(cmd-l)

word wrap: key(cmd-shift-w)

save all: key(cmd-alt-s)
snip whole line: key(ctrl-shift-k)
# to use more!

dup it: key(cmd-shift-d)

run it: key(cmd-enter)

go symbol: key(cmd-r)

go <number>: 
  key(ctrl-g)
  insert("{number}")
  key(enter)
go def: key(alt-cmd-down) 
# go definition
go file: key(cmd-t)
go reference: key(cmd-r)
go any: key(cmd-p)

go top: key(cmd-up)
go bottom: key(cmd-down)

switch project:
  key(ctrl-cmd-p)

# ==== SELECTIONS

#select line# in ST
select <number>:
  key(ctrl-g)
  insert("{number}")
  key(enter)
  key(cmd-l)

select indented: key("shift-cmd-j")

# need to figureut how to make this work
#selecting <number> to <number>:
#  key(ctrl-g)
#  insert("{number_1}")
#  key(enter)
#  key("cmd-l:{(number_2 - number_1) + 1}")

<number> below:
  key(down)
  key("cmd-l:{number}")

<number> and below:
  key("cmd-l:{number}")

<number> above:
  key("up:{number}")
  key("cmd-l:{number}")

^<number> and above:
  key("up:{number - 1}")
  key("cmd-l:{number}")


# ==== MULTIPLE SELECTIONS

skip it: 
  key(cmd-k)
  key(cmd-d)

undo select: 
  key(cmd-u)


sidebar: 
  key(cmd-k)
  key(cmd-b)

check dash: key(ctrl-d)

paste history: key(cmd-alt-v)

paste indent: key(cmd-shift-v)

new term below:
  key(ctrl-alt-t)

new term right:
  key(cmd-ctrl-t)

toggle term:
  key("cmd-shift-p")
  insert("terminus toggle panel")
  key(enter)


close all term:
  key("cmd-shift-p")
  insert("terminus: close all")
  key(enter)


run num <number>:
  key(ctrl-g)
  insert("{number}")
  key(enter)
  key(cmd-enter)

run <number> down:
  key("cmd-l:{number}")
  key(cmd-enter)

run <number> up:
  key("up:{number}")
  key("cmd-l:{number}")
  key(cmd-enter)


curse down <number>: 
  key("shift-ctrl-down:{number - 1}")

curse up <number>: 
  key("shift-ctrl-up:{number - 1}")


#===== FINDING AND REPLACING ========
find in files: key(cmd-shift-f)
search replace: key(cmd-alt-f)


repository:
  key(cmd-shift-p)
  insert("Sublime Merge: Open Repository")
  key(enter)

