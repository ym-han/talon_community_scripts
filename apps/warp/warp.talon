app: warp
-
tag(): terminal
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs
tag(): user.file_manager
tag(): user.readline

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
