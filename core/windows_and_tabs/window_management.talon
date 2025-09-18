window (new | open): app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
window hide: app.window_hide()

focus <user.running_applications>: user.switcher_focus(running_applications)
focus <user.running_applications> [<phrase>]$:
    user.switcher_focus(running_applications)
    sleep(200ms)
    user.parse_phrase(phrase or "")
# following only works on windows. Can't figure out how to make it work for mac. No idea what the equivalent for linux would be.
# focus$: user.switcher_menu()
running list: user.switcher_toggle_running()
running close: user.switcher_hide_running()
launch <user.launch_applications>: user.switcher_launch(launch_applications)

# using talon_wm
#snap <user.window_snap_position>: user.snap_window(window_snap_position)
#snap next [screen]: user.move_window_next_screen()
#snap last [screen]: user.move_window_previous_screen()
snap screen <number>: user.move_window_to_screen(number)
#snap <user.running_applications> <user.window_snap_position>:
#    user.snap_app(running_applications, window_snap_position)
#snap <user.running_applications> [screen] <number>:
#    user.move_app_to_screen(running_applications, number)

portal$:
    user.switcher_focus("Google Chrome")
    sleep(200ms)

#############################
#    Focus specific apps
#############################

focus zed obsidian$:
    key("alt-p")
    insert("zed obsidian archive")
    key(enter)
    sleep(20ms)

(focus zed talon | tune talon)$:
    key("alt-p")
    insert("zed knausj_talon")
    key(enter)
    sleep(20ms)

focus termy$:  
    user.switcher_focus("Terminal")
    sleep(20ms)

focus warp$:  
    user.switcher_focus("Warp")
    sleep(20ms)

vee coder [<phrase>]$:
    user.switcher_focus("Code")
    sleep(200ms)
    user.parse_phrase(phrase or "")

slacker$:
    user.switcher_focus("Slack")
    sleep(200ms)
<<<<<<< HEAD
    user.parse_phrase(phrase or "")
=======
>>>>>>> edbc8db7 (Focus apps and specific windows of apps)
