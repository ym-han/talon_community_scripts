os: mac
user.running: yabai
-

#win right: user.yabai_focus("east")
#win left: user.yabai_focus("west")
win down: user.yabai_focus("south")
win up: user.yabai_focus("north")

move win right: user.yabai("window --warp east")
move win left: user.yabai("window --warp west")
move win up: user.yabai("window --warp north")
move win down: user.yabai("window --warp south")

win kill: user.yabai("window --close")

win swap {user.yabai_selector}: user.yabai("window --swap {yabai_selector}")


win grow <number> {user.arrow_key}:
    user.yabai_win_resize("{arrow_key}", number * 50)

win shrink <number> {user.arrow_key}:
    amount = number * 50
    user.yabai_win_resize("{arrow_key}", 0 - amount)

win screen: user.yabai("window --display recent")

win space <number_small>: user.yabai("window --space {number_small}")
win space {user.yabai_selector}: user.yabai("window --space {yabai_selector}")

# Requires disabling system integrity protection :(
# space <number_small>:
#   user.yabai("space --focus {number_small}")

# space {user.yabai_selector}:
#   user.yabai("space --focus {yabai_selector}")

space mirror: user.yabai("space --mirror y-axis")

space mirror vert: user.yabai("space --mirror x-axis")

space balance: user.yabai("space --balance y-axis")

space balance vert: user.yabai("space --balance x-axis")

space rotate: user.yabai("space --rotate 90")

screen switch: user.yabai("display --focus recent")


port <number_small>: key("alt-{number_small}")
port ten: key(alt-0)
