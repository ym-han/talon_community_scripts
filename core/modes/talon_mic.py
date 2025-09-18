from talon import Module, actions

mod = Module()
@mod.action_class
class Actions:
    def toggle_microphone():
        """Toggle the microphone between None and System Default"""
        active = actions.sound.active_microphone()
        if active == "None":
            actions.sound.set_microphone("System Default")
        else:
            actions.sound.set_microphone("None")