waiting: sleep(400ms)

state decl: "decl"
state to do: "TODO: "

# homerow
^mouser [<user.text>]:
    user.homerow_search()
    sleep(50ms)
    insert(text or "")

dot talon: ".talon"
sync dpt: """dptrp1 sync "/Users/ymh/Dropbox/Sony Reader Sync" Document/sync"""

prefix doc: "Doc: "
prefix mirdin: "Mirdin Software Design:"
#prefix clingo: "Clingo: "
prefix haskell: "Haskell: "
prefix yak shaving: "Yak shaving: "
prefix talon binding: "Talon voice binding:\n"
prefix rango binding: "Talon voice binding -- Rango:\n"

tag rango talon: "rango-talon"

talon log path: "/Users/ymh/.talon/talon.log"
zed talon log:
  insert("zed /Users/ymh/.talon/talon.log")
  key(enter)

slow mode: mode.enable("user.slow")
fast mode: mode.disable("user.slow")

witcher: key(ctrl-space)

#switcher: key(alt-p)
# for Contexts app

paste match: edit.paste_match_style()

screen area: key(cmd-ctrl-shift-4)

padder:
  insert("  ")
  key(left)
nexxy:
  edit.line_end()
  key(enter)

alfred: key(cmd-space)
veems: key(cmd-shift-space)


################################
# Window management related
##############################
# To do in the future: revert this to 'focus', and add a conditional: if already in list of running apps, just focus on it; if not, launch it.

focus anki: user.switcher_launch("/Applications/Anki.app")
key(ctrl-alt-cmd-shift-a):  user.switcher_launch("/Applications/Anki.app")

key(ctrl-alt-cmd-shift-w):  user.switcher_launch("/Applications/Warp.app")

key(ctrl-alt-cmd-shift-z):  user.switcher_launch("/Applications/Zed.app")


################################
# Clipboard
##############################

clippy: key(alt-cmd-c)
# alfred clipboard

^command <number>$: key(cmd-number)

word sub read it: "subreddit"

#<phrase>: skip()

slash <user.text>:
    insert("/")
    insert(text)
    insert(" ")


# ----------------
#  USEFUL PROMPTS
# ----------------

state prompt pretty print: "Format / pretty print this -- but don't change any of the content."

state prompt explain tailwind: "Explain what this Tailwind-related code is doing:\n"

state prompt refactor using match: "Refactor this using match from ts-pattern"

#https://x.com/buccocapital/status/1890745551995424987
state prompt deep research:
    """
    Please build a prompt using the following guidelines:

    Define the Objective:
    - Clearly state the main research question or task.
    - Specify the desired outcome (e.g., detailed analysis, comparison, recommendations).

    Gather Context and Background:
    - Include all relevant background information, definitions, and data.
    - Specify any boundaries (e.g., scope, timeframes, geographic limits).

    Use Specific and Clear Language:
    - Provide precise wording and define key terms.
    - Avoid vague or ambiguous language.

    Provide Step-by-Step Guidance:
    - Break the task into sequential steps or sub-tasks.
    - Organize instructions using bullet points or numbered lists.

    Specify the Desired Output Format:
    - Describe how the final answer should be organized (e.g., report format, headings, bullet points, citations).
    Include any specific formatting requirements.

    Balance Detail with Flexibility:
    - Offer sufficient detail to guide the response while allowing room for creative elaboration.
    - Avoid over-constraining the prompt to enable exploration of relevant nuances.

    Incorporate Iterative Refinement:
    - Build in a process to test the prompt and refine it based on initial outputs.
    - Allow for follow-up instructions to adjust or expand the response as needed.

    Apply Proven Techniques:
    - Use methods such as chain-of-thought prompting (e.g., “think step by step”) for complex tasks.
    - Encourage the AI to break down problems into intermediate reasoning steps.

    Set a Role or Perspective:
    - Assign a specific role (e.g., “act as a market analyst” or “assume the perspective of a historian”) to tailor the tone and depth of the analysis.

    Avoid Overloading the Prompt:
    - Focus on one primary objective or break multiple questions into separate parts.
    - Prevent overwhelming the prompt with too many distinct questions.

    Request Justification and References:
    - Instruct the AI to support its claims with evidence or to reference sources where possible.
    - Enhance the credibility and verifiability of the response.

    Review and Edit Thoroughly:
    - Ensure the final prompt is clear, logically organized, and complete.
    - Remove any ambiguous or redundant instructions.
    """
