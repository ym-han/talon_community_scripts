<user.letter>:                        key(letter)
ship <user.letters> [(lowercase | sunk)]: user.insert_formatted(letters, "ALL_CAPS")

<user.symbol_key>:                    key(symbol_key)
<user.function_key>:                  key(function_key)
<user.special_key>:                   key(special_key)

<user.keypad_key>:                    key(keypad_key)

<user.modifiers> <user.unmodified_key>:   key("{modifiers}-{unmodified_key}")
saran <user.saranable_key>:           insert(saranable_key)

# for key combos consisting only of modifiers, eg. `press super`.
press <user.modifiers>:               key(modifiers)
# for consistency with dictation mode and explicit arrow keys if you need them.
press <user.keys>:                    key(keys)

# Special symbols
sym new line:                         "\\n"
sym tab:                              "\\t"
sym carriage return:                  "\\r"
sym line feed:                        "\\r\\n"

sym lambda:                           "λ"
sym gamma:                            "Γ"
sym small gamma:                      "γ"
sym member of:                        "∈"
sym sigma:                            "σ"

sym ellipses:                         "..."
sym reversed arrow:                   "<-"
sym arrow:                            "->"
sym dub arrow:                        "=>"
sym dub dash:                         "--"
sym big dash:                         "---"
sym code block:                       insert("```\n")
sym triple quote:                     "'''"

coalgap:                              ": "
semi gap:                             "; "
spamma:                               ", "

# See also plugin/symbols/symbols.talon -- TODO: need to rationalize that!

# Add symbol at end of line and then insert line below
spike {user.symbol_key}:                  user.insert_symbol_and_break_at_end(symbol)

# Add symbol padded/surrounded by whitespace
pad {user.symbol_key}:                    " {symbol} "
