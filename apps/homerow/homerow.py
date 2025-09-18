from talon import Context, Module, actions

ctx = Context()
mod = Module()

mod.tag("homerow_search")


@ctx.action_class("user")
class UserActions:
    def homerow_search():
        actions.key("cmd-shift-ctrl-alt-s")
        ctx.tags = ["user.homerow_search"]

    def homerow_click():
        actions.key("enter")
        ctx.tags = []

    def homerow_right_click():
        actions.key("shift-enter")
        ctx.tags = []

    def homerow_get_element_info():
        actions.key("?")

    def homerow_double_click():
        actions.key("enter")
        actions.key("enter")
        ctx.tags = []

    def homerow_cancel_search():
        actions.key("escape")
        ctx.tags = []


@mod.action_class
class Actions:
    def homerow_search():
        """Search in Homerow"""

    def homerow_click():
        """Click a home row item"""

    def homerow_right_click():
        """Right click a home row item"""

    def homerow_double_click():
        """Doubleclick a home row item"""

    def homerow_get_element_info():
        """Get info on an element"""

    def homerow_cancel_search():
        """Cancel the homerow search"""
