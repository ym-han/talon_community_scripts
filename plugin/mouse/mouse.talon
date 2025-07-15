control mouse legacy: tracking.control1_toggle()
control mouse: tracking.control_toggle()

key(cmd-alt-shift-h): tracking.control_toggle()

mouse off: user.mouse_sleep()
mouse on: user.mouse_wake()

zoom mouse: tracking.control_zoom_toggle()
camera overlay: tracking.control_debug_toggle()
calibrate mouse: tracking.calibrate()


###########################
#     Clicking
###########################

touch:
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click(0)
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for right drags specifically
    user.mouse_drag_end()

right touch:
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()

mid click:
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click(2)
    # close the mouse grid
    user.grid_close()

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<user.modifiers> touch:
    # close zoom if open
    tracking.zoom_cancel()
    key("{modifiers}:down")
    mouse_click(0)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
<user.modifiers> righty:
    # close zoom if open
    tracking.zoom_cancel()
    key("{modifiers}:down")
    mouse_click(1)
    key("{modifiers}:up")
    # close the mouse grid
    user.grid_close()
dub click:
    tracking.zoom_cancel()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()
(trip click | trip lick):
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()

###########################
#     Dragging
###########################


drag it:
    # close zoom if open
    tracking.zoom_cancel()
    user.mouse_drag(0)

    # close the mouse grid
    user.grid_close()

right drag:
    # close zoom if open
    tracking.zoom_cancel()
    user.mouse_drag(1)
    # close the mouse grid
    user.grid_close()
end drag | drag end: user.mouse_drag_end()


###########################
#     Scrolling
###########################

#scroll down: user.mouse_scroll_down()
scroll down here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
scroll tiny [down]: user.mouse_scroll_down(0.2)
scroll tiny [down] here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_down(0.2)

downy: user.mouse_scroll_down_continuous(0.36)
downslow: user.mouse_scroll_down_continuous(0.15)


#scroll downer here:
#    user.mouse_move_center_active_window()
#    user.mouse_scroll_down_continuous()

#scroll up: user.mouse_scroll_up()
scroll up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up()
scroll tiny up: user.mouse_scroll_up(0.2)
scroll tiny up here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_up(0.2)
    user.mouse_move_center_active_window()
    user.mouse_scroll_left()
scroll tiny left: user.mouse_scroll_left(0.5)
scroll tiny left here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_left(0.5)
scroll right: user.mouse_scroll_right()
scroll right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right()
scroll tiny right: user.mouse_scroll_right(0.5)
scroll tiny right here:
    user.mouse_move_center_active_window()
    user.mouse_scroll_right(0.5)
copy mouse position: user.copy_mouse_position()

# To scroll with a hiss sound, set mouse_enable_hiss_scroll to true in settings.talon
#mouse hiss up: user.hiss_scroll_up()
#mouse hiss down: user.hiss_scroll_down()
