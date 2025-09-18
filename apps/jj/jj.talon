tag: terminal
and tag: user.jj
-
jay jay {user.jj_command} [<user.jj_arguments>]:
    args = jj_arguments or ""
    "jj {jj_command}{args} "

jay jay describe [<user.jj_arguments>] message [<user.prose>]:
    args = jj_arguments or ""
    message = prose or ""
    user.insert_between('jj describe{args} --message "{message}', '"')

jay jay new [<user.jj_arguments>] message [<user.prose>]:
    args = jj_arguments or ""
    message = prose or ""
    user.insert_between('jj new{args} --message "{message}', '"')

jay jay commit [<user.jj_arguments>] message [<user.prose>]:
    args = jj_arguments or ""
    message = prose or ""
    user.insert_between('jj commit{args} --message "{message}', '"')

# Optimistic execution for read-only commands
jj status$: "jj status\n"
jay jay log$: "jj log\n"
jay jay show$: "jj show\n"
jay jay diff$: "jj diff\n"

# Convenience
jay jay git clone colocate:
  insert("jj git clone --colocate .")

jj git import clipboard:
    insert("jj git import ")
    edit.paste()
    key(enter)

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
