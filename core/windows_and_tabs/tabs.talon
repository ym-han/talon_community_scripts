tag: user.tabs
-
(new tab | tab new): app.tab_open()
tab left: app.tab_previous()
tab right: app.tab_next()
tab close: user.tab_close_wrapper()
tab (reopen | restore): app.tab_reopen()
  
go tab <number>: user.tab_jump(number)
go last tab: user.tab_final()
tab duplicate: user.tab_duplicate()
