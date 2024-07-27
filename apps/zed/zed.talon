app: zed
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
tag(): terminal


please [<user.text>]:
    key(cmd-shift-p)
    insert(user.text or "")

cancel: key(ctrl-c)

hover show:
    key(cmd-shift-p)
    insert("editor: hover")
    sleep(0.1)
    key(enter)

go anki talon:
    key(cmd-p)
    insert("anki.talon")
    sleep(0.05)
    key(enter)

(dock | dog) reveal:
    key(cmd-shift-p)
    insert("editor: reveal in file manager")
    sleep(0.05)
    key(enter)
