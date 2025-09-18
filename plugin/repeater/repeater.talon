# Personal simplified commands
# -1 because we are repeating, so the initial command counts as one

twice: core.repeat_command(1)
times <number_small>: core.repeat_command(number_small - 1)

repeat [<number_small> times]:
    core.repeat_partial_phrase(number_small or 1)
