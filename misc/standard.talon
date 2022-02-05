
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()

scroll up: edit.page_up()
scroll down: edit.page_down()

cop it: edit.copy()
cut it: edit.cut()
paste it: edit.paste() 

slow mode: mode.enable("user.slow")

switcher: key(alt-p)
# for Contexts app

nope that: edit.undo()
redo that: edit.redo()
paste match: edit.paste_match_style()
save it: edit.save()

screen area: key(cmd-ctrl-shift-4)

spamma: ", "
coalgap: ": "

arg wrap: 
  insert("(")
  edit.line_end()
  insert(")")


brace wrap: 
  insert("{")
  edit.line_end()
  insert("}")

padder: 
  insert("  ") 
  key(left)
nexxy:
  edit.line_end()
  key(enter)

alfred: key(cmd-space)
vi mac: key(ctrl-alt-shift-v)


# To do in the future: revert this to 'focus', and add a conditional: if already in list of running apps, just focus on it; if not, launch it.
#launch eye term: switcher_launch("Applications/iterm2.app")
# launch sub: switcher_launch("Applications/Sublime Text.app")
# launch anki: switcher_launch("Applications/Anki.app")

clippy: key(alt-cmd-c)
# alfred clipboard

^command <number>$: key(cmd-number)

word sub read it: "subreddit"

#<phrase>: skip()


