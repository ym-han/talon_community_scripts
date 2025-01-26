app: zed
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
tag(): terminal

menu: key(cmd-p)

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

soft wrap:
    key(cmd-shift-p)
    insert("editor soft wrap")
    key(enter)


help here:        key(ctrl-enter)
assist panel:     key(cmd-r)

with quote:       key(cmd->)

search all files: key(cmd-shift-f)


# Slash commands
(add | slash) file:
    insert("/file ")

(add | slash) diagnostics:
    insert("/diagnostics ")

(add | slash) prompt:
    insert("/prompt ")

slash fetch:
    insert("/fetch ")

# Make shift prompts
what does copied do:
  insert("/file ")
  key(enter)
  key(enter)
  insert("What does ")
  insert(clip.text())
  insert(" do?")
