#defines the commands that sleep/wake Talon
mode: all
-
^welcome back$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
#^sleep all [<phrase>]$:
#    user.switcher_hide_running()
#    user.history_disable()
#    user.homophones_hide()
#    user.help_hide()
#    user.mouse_sleep()
#    speech.disable()
#    user.engine_sleep()

^talk drowse [<phrase>]$: speech.disable()
^talon wake$: speech.enable()

#^drowse [<phrase>]$: user.toggle_microphone()
key(cmd-alt-shift-s): user.toggle_microphone()


drowse <phrase> resume$: skip()

