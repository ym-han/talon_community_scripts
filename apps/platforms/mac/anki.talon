os: mac
app: net.ankiweb.dtop
-

add it: key(cmd-enter)

new card: key(a)

bad card: key(1)

show history: key(cmd-shift-h)

# this is set to paste python code by default
paste code: 
  key(alt-s)
  insert("py")
  key(enter)

paste julia code: 
  key(alt-s)
  insert("Select from")
  key(enter)
  sleep(300ms)
  insert("Julia")
  key(enter)

paste custom language code: key(alt-s)
