padding: user.insert_between(" ", " ")
padding <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")

# ----------------
#  USEFUL PROMPTS
# ----------------

state prompt pretty print: "Format / pretty print this -- but don't change any of the content."

state prompt explain tailwind: "Explain what this Tailwind-related code is doing:\n"
