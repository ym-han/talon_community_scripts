waiting: sleep(400ms)

state decl: "decl"
state to do: "TODO: "

# homerow
^mouser [<user.text>]:
    user.homerow_search()
    sleep(50ms)
    insert(text or "")

dot talon: ".talon"
sync dpt: """dptrp1 sync "/Users/ymh/Dropbox/Sony Reader Sync" Document/sync"""

prefix doc: "Doc: "
prefix mirdin: "Mirdin Software Design:"
#prefix clingo: "Clingo: "
prefix haskell: "Haskell: "
prefix yak shaving: "Yak shaving: "
prefix talon binding: "Talon voice binding:\n"
prefix rango binding: "Talon voice binding -- Rango:\n"

tag rango talon: "rango-talon"

talon log path: "/Users/ymh/.talon/talon.log"
sublime talon log: "subl /Users/ymh/.talon/talon.log"

slow mode: mode.enable("user.slow")
fast mode: mode.disable("user.slow")

witcher: key(ctrl-space)

#switcher: key(alt-p)
# for Contexts app

paste match: edit.paste_match_style()

screen area: key(cmd-ctrl-shift-4)

padder:
  insert("  ")
  key(left)
nexxy:
  edit.line_end()
  key(enter)

alfred: key(cmd-space)
veems: key(cmd-shift-space)


# To do in the future: revert this to 'focus', and add a conditional: if already in list of running apps, just focus on it; if not, launch it.
#launch eye term: switcher_launch("Applications/iterm2.app")
# launch sub: switcher_launch("Applications/Sublime Text.app")
# launch anki: switcher_launch("Applications/Anki.app")

clippy: key(alt-cmd-c)
# alfred clipboard

^command <number>$: key(cmd-number)

word sub read it: "subreddit"

#<phrase>: skip()

slash <user.text>:
    insert("/")
    insert(text)
    insert(" ")
