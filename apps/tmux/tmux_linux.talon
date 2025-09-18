os: linux
os: mac
tag: user.tmux
tag: terminal

-
mux: "tmux "
mux new session: insert("tmux new -s ")


#session management
mux sessions:
    key(ctrl-b)
    key(s)

mux lisa: "tmux ls \n"
mux name session:
    key(ctrl-b)
    key($)
mux kill session: insert("tmux kill-session -t ")

mux exit: "exit\n"

mux attach: "tmux attach"
mux attach t: "tmux attach -t "

mux detach: 
    key(ctrl-b)
    key(d)

#window management
mux new window:
    key(ctrl-b)
    key(c)
mux window <number>:
    key(ctrl-b)
    key('{number}')
mux previous window:
    key(ctrl-b)
    key(p)
mux next window:
    key(ctrl-b)
    key(n)
mux rename window:
    key(ctrl-b)
    key(,)
mux close window:
    key(ctrl-b)
    key(&)
#pane management
mux split horizontal:
    key(ctrl-b)
    key(%)
mux split vertical:
    key(ctrl-b)
    key(")
mux next pane:
    key(ctrl-b)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-b)
    key(arrow_key)
mux close pane:
    key(ctrl-b)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-b)
    key(q)
