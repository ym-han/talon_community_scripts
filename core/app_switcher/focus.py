import re
from talon import Context, Module, actions, app, ui

ctx = Context()
mod = Module()

mod.list("window_titles", desc="All window titles")

APPLICATION_MATCH_REGEX = re.compile("PyCharm|IntelliJ.*|TextEdit|Visual Studio.*")


@mod.action_class
class Actions:
    def update_window_titles():
        """Updates the list of window titles."""

        result = {}
        try:
            # NOTE(pcohen): for now only include windows from a limited set of applications;
            # this prevents us from having to break ties.
            windows = [
                w for w in ui.windows() if APPLICATION_MATCH_REGEX.match(w.app.name)
            ]
            titles = sorted(w.title for w in windows)

            for name in titles:
                clean_version = re.sub(
                    r"[^a-zA-Z]+", " ", name.split("–")[0].strip()
                ).strip()
                if clean_version:
                    result[clean_version] = name
            result = actions.user.create_spoken_forms_from_map(result)
        except Exception as e:
            print(f"Exception: {e}")
        finally:
            ctx.lists["self.window_titles"] = result

    def focus_window(title: str):
        """Focuses the window with the given title"""
        print(f"Now focusing {title}")

        matching_windows = ui.windows(title=title)

        if len(matching_windows) == 1:
            matching_windows[0].focus()
        elif len(matching_windows) == 0:
            app.notify(f"No windows matched", f'"{title}"')
        elif len(matching_windows) > 1:
            app.notify(
                f"{len(matching_windows)} windows matched '{title}",
                ", ".join([w.title for w in matching_windows]),
            )


ui.register("win_open", lambda _: actions.user.update_window_titles())
ui.register("win_close", lambda _: actions.user.update_window_titles())
ui.register("win_title", lambda _: actions.user.update_window_titles())
