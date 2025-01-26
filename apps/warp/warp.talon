
app: warp
-
# makes the commands in generic_terminal available
tag(): terminal

# activates the implementation of the commands/functions in generic_terminal
tag(): user.generic_unix_shell

# makes commands for certain applications available
# you can deactivate them if you do not use the application
tag(): user.git
tag(): user.npm
tag(): user.homebrew

# TODO: explain
tag(): user.tabs
tag(): user.file_manager

# suspend:
#     key(ctrl-z)
# resume:
#     insert("fg")
#     key(enter)

focus input:
    key(cmd-l)

search hist [<user.text>]:
    key(ctrl-r)
    insert(text or "")

ask ai: key(ctrl-`)

accept query:
    key(shift-cmd-enter)

accept suggestion:
    key(cmd-ctrl-`)

please [<user.text>]:
    key(cmd-p)
    insert(user.text or "")

block rerun:
    key(cmd-i)

block up:
    key(cmd-up)

block down:
    key(cmd-down)

block bookmark:
    key(cmd-b)


copy command:
    key(cmd-shift-c)

copy output:
    key(cmd-alt-shift-c)

split make right:
    key(cmd-d)

split make down:
    key(cmd-shift-d)

split right:
    key(cmd-alt-right)

split left:
    key(cmd-alt-left)

split up:
    key(cmd-alt-up)

split down:
    key(cmd-alt-down)

split max:
    key(cmd-shift-enter)
