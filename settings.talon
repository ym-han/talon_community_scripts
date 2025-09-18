-
settings():
    speech.timeout = 0.3
    speech.record_all = 1
    # Adjust the scale of the imgui to my liking
    imgui.scale = 1.3

    # Enable if you'd like the picker gui to automatically appear when explorer has focus
    user.file_manager_auto_show_pickers = 0

    # Set the max number of command lines per page in help
    user.help_max_command_lines_per_page = 50

    user.ocr_select_pause_seconds = 0.6

    # Set the max number of contexts display per page in help
    user.help_max_contexts_per_page = 30

    # Set the scroll amount for continuous scroll/gaze scroll
    user.mouse_continuous_scroll_amount = 7

    # Stop continuous scroll/gaze scroll with a pop
    user.mouse_enable_pop_stops_scroll = 1

    # Enable pop click with 'control mouse' mode.
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 1

    # Uncomment the below to enable mouse scroll down using hiss noise
    # user.mouse_enable_hiss_scroll = 1

    # When enabled, the 'Scroll Mouse' GUI will not be shown.
    user.mouse_hide_mouse_gui = 0

    # Hide cursor when mouse_wake is called to enable zoom mouse
    user.mouse_wake_hides_cursor = 0

    # Set the amount to scroll up/down
    user.mouse_wheel_down_amount = 50

    # The amount to scroll left/right
    user.mouse_wheel_horizontal_amount = 40

    # Mouse grid and friends put the number one on the bottom left (vs on the top left)
    user.grids_put_one_bottom_left = 1

    # The number of lines of command history to display by default
    user.command_history_display = 10

    # Set the total number of command history lines to display
    user.command_history_size = 30

    # Uncomment the below to insert text longer than 10 characters (customizable) by
    # pasting from the clipboard. This is often faster than typing.
    user.paste_to_insert_threshold = 10

    # Uncomment to enable context-sensitive dictation. This determines how to format
    # (capitalize, space) dictation-mode speech by selecting & copying surrounding text
    # before inserting. This can be slow and may not work in some applications. You may
    # wish to enable this on a per-application basis.
    user.context_sensitive_dictation = true

    # Choose how to resize windows moved across physical screens (eg. via `snap next`).
    # Default is 'proportional', which preserves window size : screen size ratio.
    # 'size aware' keeps absolute window size the same, except full-height or
    # -width windows are resized to stay full-height/width.
    #user.window_snap_screen = "size aware"

# Uncomment to enable the curse yes/curse no commands (show/hide mouse cursor).
# See issue #688 for more detail: https://github.com/talonhub/community/issues/688
tag(): user.mouse_cursor_commands_enable

# Uncomment the below to disable support for saying numbers without a prefix.
# By default saying "one" would write "1", however many users find this behavior
# prone to false positives. If you uncomment this, you will need to say
# "numb one" to write "1". Note that this tag will eventually be activated by default
tag(): user.prefixed_numbers
