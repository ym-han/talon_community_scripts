from talon import Context, Module, actions

mod = Module()
ctx = Context()

mod.tag("jj", desc="Commands for working with jj version-control repositories.")

mod.list("jj_command", desc="jj commands")
mod.list("jj_argument", desc="Command-line jj options and arguments")


@mod.capture(rule="{user.jj_argument}+")
def jj_arguments(m) -> str:
    """A non-empty sequence of jj command arguments, preceded by a space."""
    return " " + " ".join(m.jj_argument_list)
