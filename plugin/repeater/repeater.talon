# -1 because we are repeating, so the initial command counts as one
#<user.ordinals>: core.repeat_command(ordinals - 1)
twice: core.repeat_command(1)
times <number_small>: core.repeat_command(number_small - 1)

repeat [<number_small> times]:
    core.repeat_partial_phrase(number_small or 1)
