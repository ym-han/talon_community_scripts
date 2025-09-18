tag: terminal
and tag: user.jj
-

# TODO: Refactor to capture the structure of the grammar better

jj {user.jj_command} [<user.jj_arguments>]:
    args = jj_arguments or ""
    "jj {jj_command}{args} "

jj describe [<user.jj_arguments>] message [<user.prose>]:
    args = jj_arguments or ""
    message = prose or ""
    user.insert_between('jj describe{args} --message "{message}', '"')

jj new [<user.jj_arguments>] message [<user.prose>]:
    args = jj_arguments or ""
    message = prose or ""
    user.insert_between('jj new{args} --message "{message}', '"')

jj commit [<user.jj_arguments>] message [<user.prose>]:
    args = jj_arguments or ""
    message = prose or ""
    user.insert_between('jj commit{args} --message "{message}', '"')


jj status$: "jj status\n"
jj log$: "jj log\n"
jj show$: "jj show\n"
jj diff$: "jj diff\n"

jj log heads all:
    insert("jj log -r 'heads(all())'")
    key(enter)
jj log trunk:
    insert("jj log -r 'trunk()'")
    key(enter)

jj rebase changes from main:
  insert("jj rebase -s 'roots(main..@)' -d main")

jj squash keep emptied: insert("jj squash -k")

jj git clone colocate:
  insert("jj git clone --colocate .")

jj git push this change:
  insert("jj git push -c @")
  key(enter)

jj git push change: insert("jj git push -c")


#jj git import clipboard:
#    insert("jj git import ")
#    edit.paste()
#    key(enter)

jj diff highlighted:
    edit.copy()
    insert("jj diff ")
    edit.paste()
    key(enter)

jj describe highlighted:
    edit.copy()
    insert("jj describe --message \"")
    edit.paste()
    insert("\"")

jj restore highlighted:
    edit.copy()
    insert("jj restore ")
    edit.paste()
    key(enter)
