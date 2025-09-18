#custom vscode commands go here
app: vscode
-
tag(): user.find_and_replace
tag(): user.line_commands
tag(): user.multiple_cursors
tag(): user.splits
tag(): user.tabs
tag(): user.command_search

# NOTES
# User settings: application_support / "Code - Insiders/User/settings.json",

# inspiration: https://github.com/pokey/pokey_talon/blob/7b0f05c07ac651655546c46b071fa3cdf77bc832/apps/vscode/vscode.talon


cross it: user.split_next()
# TODO not sure why this isn't working?

window reload: user.vscode("workbench.action.reloadWindow")
window close: user.vscode("workbench.action.closeWindow")
#multiple_cursor.py support end

please [<user.text>]:
    user.vscode("workbench.action.showCommands")
    insert(user.text or "")

restart extension host: user.vscode("workbench.action.restartExtensionHost")

go view [<user.text>]:
    user.vscode("workbench.action.openView")
    insert(user.text or "")

# Sidebar
bar explore: user.vscode("workbench.view.explorer")
bar extensions: user.vscode("workbench.view.extensions")
bar outline: user.vscode("outline.focus")
bar run: user.vscode("workbench.view.debug")
bar search: user.vscode("workbench.view.search")
bar source: user.vscode("workbench.view.scm")
list wreck: user.vscode("pr:github.focus")
bar test: user.vscode("workbench.view.testing.focus")
bar switch: user.vscode("workbench.action.toggleSidebarVisibility")
side dog: user.vscode("workbench.action.toggleSidebarVisibility")
search next: user.vscode("search.action.focusNextSearchResult")
search prev: user.vscode("search.action.focusPreviousSearchResult")
search last: user.vscode("search.action.focusPreviousSearchResult")
bar collapse: user.vscode("workbench.files.action.collapseExplorerFolders")


# Symbol search
symbol scout [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    sleep(50ms)
    insert(text or "")

symbol scout all [<user.text>]:
    user.vscode("workbench.action.showAllSymbols")
    sleep(50ms)
    insert(text or "")

symbol last: user.vscode("gotoNextPreviousMember.previousMember")
symbol next: user.vscode("gotoNextPreviousMember.nextMember")


# Panels
control panel: user.vscode("workbench.panel.repl.view.focus")
output panel: user.vscode("workbench.panel.output.focus")
problems panel: user.vscode("workbench.panel.markers.view.focus")
panel switch: user.vscode("workbench.action.togglePanel")
panel toggle: user.vscode("workbench.action.togglePanel")
panel terminal: user.vscode("workbench.action.terminal.focus")
term show:
    user.vscode("workbench.action.terminal.focus")
    sleep(200ms)
now term:
    user.vscode("workbench.action.terminal.focus")
    sleep(200ms)
focus editor: user.vscode("workbench.action.focusActiveEditorGroup")
pan edit: user.vscode("workbench.action.focusActiveEditorGroup")
now editor: user.vscode("workbench.action.focusActiveEditorGroup")

panel right:
  user.vscode("workbench.action.showCommands")
  insert("View: move panel right")
  key(enter)

panel left:
  user.vscode("workbench.action.showCommands")
  insert("View: move panel left")
  key(enter)

# Settings
show settings:
    sleep(50ms)
    user.vscode("workbench.action.openGlobalSettings")
show settings json: user.vscode("workbench.action.openSettingsJson")
show settings folder: user.vscode("workbench.action.openFolderSettings")
show settings folder json: user.vscode("workbench.action.openFolderSettingsFile")
show settings workspace: user.vscode("workbench.action.openWorkspaceSettings")
show settings workspace json: user.vscode("workbench.action.openWorkspaceSettingsFile")
show shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
show shortcuts json: user.vscode("workbench.action.openGlobalKeybindingsFile")
show snippets: user.vscode("workbench.action.openSnippets")

# VSCode Snippets
snip (last | previous): user.vscode("jumpToPrevSnippetPlaceholder")

# Display
centered switch: user.vscode("workbench.action.toggleCenteredLayout")
fullscreen switch: user.vscode("workbench.action.toggleFullScreen")
theme switch: user.vscode("workbench.action.selectTheme")
wrap switch: user.vscode("editor.action.toggleWordWrap")
zen switch: user.vscode("workbench.action.toggleZenMode")
zen toggle: user.vscode("workbench.action.toggleZenMode")
word wrap: user.vscode("editor.action.toggleWordWrap")
zen mode:
    user.vscode("workbench.action.closeSidebar")
    user.vscode("workbench.action.closePanel")

# File Commands
dock [<user.text>] [{user.file_extension}] [stop]:
    user.vscode("workbench.action.quickOpen")
    sleep(400ms)
    insert(text or "")
    insert(file_extension or "")
    sleep(300ms)

dock clip:
    user.vscode("workbench.action.quickOpen")
    sleep(400ms)
    edit.paste()
    sleep(300ms)
    key(enter)
    sleep(150ms)

(dock | dog) copy name: user.vscode("fileutils.copyFileName")
(dock | dog) copy path: user.vscode("copyFilePath")
(dock | dog) copy local [path]: user.vscode("copyRelativeFilePath")
(dock | dog) make sibling: user.vscode_and_wait("explorer.newFile")
(dock | dog) make: user.vscode("workbench.action.files.newUntitledFile")
(dock | dog) make relative: user.vscode("fileutils.newFile")
(dock | dog) make root: user.vscode("fileutils.newFileAtRoot")
(dock | dog) rename:
    user.vscode("fileutils.renameFile")
    sleep(150ms)
(dock | dog) move:
    user.vscode("fileutils.moveFile")
    sleep(150ms)
(dock | dog) clone:
    user.vscode("fileutils.duplicateFile")
    sleep(150ms)
(dock | dog) delete:
    user.vscode("fileutils.removeFile")
    sleep(150ms)
(dock | dog) open folder: user.vscode("revealFileInOS")
(dock | dog) reveal: user.vscode("workbench.files.action.showActiveFileInExplorer")
save ugly: user.vscode("workbench.action.files.saveWithoutFormatting")

# Language Features
suggest show: user.vscode("editor.action.triggerSuggest")
hint show: user.vscode("editor.action.triggerParameterHints")
def show: user.vscode("editor.action.revealDefinition")
# editor.action.revealDefinition == Go to Definition
# also have `follow` for this

def peek: user.vscode("editor.action.peekDefinition")

def side: user.vscode("editor.action.revealDefinitionAside")
references show: user.vscode("editor.action.goToReferences")
hierarchy peek: user.vscode("editor.showCallHierarchy")
references find: user.vscode("references-view.find")
ref show: user.vscode("references-view.find")

ref next:
    user.vscode("references-view.tree.focus")
    key(down enter)
ref prev:
    user.vscode("references-view.tree.focus")
    key(up enter)
format that: user.vscode("editor.action.formatDocument")
format selection: user.vscode("editor.action.formatSelection")
imports fix: user.vscode("editor.action.organizeImports")
problem next: user.vscode("editor.action.marker.nextInFiles")
problem prev: user.vscode("editor.action.marker.prevInFiles")
problem fix: user.vscode("problems.action.showQuickFixes")
rename that: user.vscode("editor.action.rename")
# this is rename symbol
refactor that: user.vscode("editor.action.refactor")
whitespace trim: user.vscode("editor.action.trimTrailingWhitespace")
language switch: user.vscode("workbench.action.editor.changeLanguageMode")
refactor rename: user.vscode("editor.action.rename")
refactor this: user.vscode("editor.action.refactor")

scout again:                user.vscode("rerunSearchEditorSearch")


ref next:
    user.vscode("references-view.tree.focus")
    key(down enter)
ref last:
    user.vscode("references-view.tree.focus")
    key(up enter)
# Code navigation
(go declaration | follow): user.vscode("editor.action.revealDefinition")
go back: user.vscode("workbench.action.navigateBack")
go forward: user.vscode("workbench.action.navigateForward")
go implementation: user.vscode("editor.action.goToImplementation")
go type def: user.vscode("editor.action.goToTypeDefinition")
#go usage: user.vscode("references-view.find")
go recent [<user.text>]:
    user.vscode("workbench.action.openRecent")
    sleep(50ms)
    insert(text or "")
    sleep(250ms)
go edit: user.vscode("workbench.action.navigateToLastEditLocation")

show all files: user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup")



# Bookmarks. Requires Bookmarks plugin
bar marks: user.vscode("workbench.view.extension.bookmarks")
show marks: user.vscode("workbench.view.extension.bookmarks")
mark toggle: user.vscode("bookmarks.toggle")
mark next: user.vscode("bookmarks.jumpToNext")
mark prev: user.vscode("bookmarks.jumpToPrevious")
go edit: user.vscode("workbench.action.navigateToLastEditLocation")

close other tabs: user.vscode("workbench.action.closeOtherEditors")
close all tabs: user.vscode("workbench.action.closeAllEditors")
close tabs way right: user.vscode("workbench.action.closeEditorsToTheRight")
close tabs way left: user.vscode("workbench.action.closeEditorsToTheLeft")

# Folding
fold that: user.vscode("editor.fold")
unfold that: user.vscode("editor.unfold")
fold those: user.vscode("editor.foldAllMarkerRegions")
unfold those: user.vscode("editor.unfoldRecursively")
fold all: user.vscode("editor.foldAll")
unfold all: user.vscode("editor.unfoldAll")
fold comments: user.vscode("editor.foldAllBlockComments")
fold one: user.vscode("editor.foldLevel1")
fold two: user.vscode("editor.foldLevel2")
fold three: user.vscode("editor.foldLevel3")
fold four: user.vscode("editor.foldLevel4")
fold five: user.vscode("editor.foldLevel5")
fold six: user.vscode("editor.foldLevel6")
fold seven: user.vscode("editor.foldLevel7")

# Git / Github (not using verb-noun-adjective pattern, mirroring terminal commands.)
git branch: user.vscode("git.branchFrom")
git branch this: user.vscode("git.branch")
git checkout [<user.text>]:
    user.vscode("git.checkout")
    sleep(50ms)
    insert(text or "")
git commit [<user.text>]:
    user.vscode("git.commitStaged")
    sleep(100ms)
    user.insert_formatted(text or "", "CAPITALIZE_FIRST_WORD")
git commit undo: user.vscode("git.undoCommit")
git commit amend: user.vscode("git.commitStagedAmend")
git diff: user.vscode("git.openChange")
git fetch: user.vscode("git.fetch")
git fetch all: user.vscode("git.fetchAll")
git ignore: user.vscode("git.ignore")
git merge: user.vscode("git.merge")
git output: user.vscode("git.showOutput")
git pull: user.vscode("git.pullRebase")
git push: user.vscode("git.push")
git push force: user.vscode("git.pushForce")
git rebase abort: user.vscode("git.rebaseAbort")
git reveal: user.vscode("git.revealInExplorer")
git revert: user.vscode("git.revertChange")
git stash: user.vscode("git.stash")
git stash pop: user.vscode("git.stashPop")
git status: user.vscode("workbench.scm.focus")
git stage: user.vscode("git.stage")
git stage all: user.vscode("git.stageAll")
git sync: user.vscode("git.sync")
git unstage: user.vscode("git.unstage")
git unstage all: user.vscode("git.unstageAll")

# (wreck | rec) make: user.vscode("pr.create")
# (wreck | rec) show: user.vscode("prStatus:github.focus")
(wreck | rec) web: user.vscode("gitlens.openAssociatedPullRequestOnRemote")
# pull request: user.vscode("pr.create")
# Use keyboard shortcuts because VSCode relies on when clause contexts to choose the appropriate
# action: https://code.visualstudio.com/api/references/when-clause-contexts
change next: key(alt-f5)
change prev: key(shift-alt-f5)

# Testing
test run: user.vscode("testing.runAtCursor")
test run file: user.vscode("testing.runCurrentFile")
test run all: user.vscode("testing.runAll")
test run failed: user.vscode("testing.reRunFailTests")
test run last: user.vscode("testing.reRunLastRun")

test debug: user.vscode("testing.debugAtCursor")
test debug file: user.vscode("testing.debugCurrentFile")
test debug all: user.vscode("testing.debugAll")
test debug failed: user.vscode("testing.debugFailTests")
test debug last: user.vscode("testing.debugLastRun")

test cancel: user.vscode("testing.cancelRun")

# Debugging
break point: user.vscode("editor.debug.action.toggleBreakpoint")
step over: user.vscode("workbench.action.debug.stepOver")
debug step into: user.vscode("workbench.action.debug.stepInto")
debug step out [of]: user.vscode("workbench.action.debug.stepOut")
debug start: user.vscode("workbench.action.debug.start")
debug pause: user.vscode("workbench.action.debug.pause")
debug stopper: user.vscode("workbench.action.debug.stop")
debug continue: user.vscode("workbench.action.debug.continue")
debug restart: user.vscode("workbench.action.debug.restart")
debug console: user.vscode("workbench.debug.action.toggleRepl")
debug clean: user.vscode("workbench.debug.panel.action.clearReplAction")

# Terminal
term external: user.vscode("workbench.action.terminal.openNativeConsole")
term new: user.vscode("workbench.action.terminal.new")
term next: user.vscode("workbench.action.terminal.focusNext")
term prev: user.vscode("workbench.action.terminal.focusPrevious")
term split: user.vscode("workbench.action.terminal.split")
term zoom: user.vscode("workbench.action.toggleMaximizedPanel")
term trash: user.vscode("workbench.action.terminal.kill")
term toggle: user.vscode_and_wait("workbench.action.terminal.toggleTerminal")
term scroll up: user.vscode("workbench.action.terminal.scrollUp")
term scroll down: user.vscode("workbench.action.terminal.scrollDown")
term <number_small>: user.vscode_terminal(number_small)

task run [<user.text>]:
    user.vscode("workbench.action.tasks.runTask")
    insert(user.text or "")
#TODO: should this be added to linecommands?
copy line down: user.vscode("editor.action.copyLinesDownAction")
copy line up: user.vscode("editor.action.copyLinesUpAction")

#Expand/Shrink AST Selection
select less: user.vscode("editor.action.smartSelect.shrink")
select (more | this): user.vscode("editor.action.smartSelect.expand")

minimap: user.vscode("editor.action.toggleMinimap")
maximize: user.vscode("workbench.action.minimizeOtherEditors")
restore: user.vscode("workbench.action.evenEditorWidths")

# TO DO: Add more here!
#breadcrumb
select breadcrumb: user.vscode("breadcrumbs.focusAndSelect")
# Use `alt-left` and `alt-right` to navigate the bread crumb

replace here:
    user.replace("")
    key(cmd-alt-l)

hover show: user.vscode("editor.action.showHover")

join lines: user.vscode("editor.action.joinLines")

full screen: user.vscode("workbench.action.toggleFullScreen")

curse undo: user.vscode("cursorUndo")
curse redo: user.vscode("cursorRedo")
hint tog: user.vscode("cursorless.toggleDecorations")

select word: user.vscode("editor.action.addSelectionToNextFindMatch")
skip word: user.vscode("editor.action.moveSelectionToNextFindMatch")


run it: key(cmd-enter)
#user.vscode("ipython.sendSelectedToIpython")

# jupyter
cell next: user.vscode("jupyter.gotoNextCellInFile")
cell prev: user.vscode("jupyter.gotoPrevCellInFile")
cell last: user.vscode("notebook.focusPreviousEditor")
cell run above: user.vscode("jupyter.runallcellsabove.palette")
cell run: user.vscode("jupyter.runcurrentcell")
cell new:
    key(esc)
    key(b)
#user.vscode("jupyter.insertCellBellowPosition")
cell down: user.vscode("jupyter.moveCellsDown")
cell up: user.vscode("jupyter.moveCellsUp")

junk cells: user.vscode("jupyter.deleteCells")
junk cell:
    key(esc)
    key(d:2)

jupiter save to pdf: user.vscode("jupyter.exportToPDF")
jupiter variables: user.vscode("jupyter.openVariableView")

jupiter run all cells: user.vscode("jupyter.runallcells")

cell markdown:
    key(esc)
    key(m)
#user.vscode("jupyter.changeCellToMarkdown")
cell code:
    key(esc)
    key(y)
#user.vscode("jupyter.changeCellToCode")

## magics
magic bash: "%%bash"
magic latex: "%%latex"
magic time it: "%timeit"
magic p run: "%prun"
magic h t m l: "%% HTML"
magic matplotlib: "%matplotlib"

# Other extensions
edit c s v: user.vscode("edit-csv.edit")

# Misc
copy command id:            user.copy_command_id()

install extension: user.vscode("workbench.extensions.action.installVSIX")
preview markdown: user.vscode("markdown.showPreview")

# From https://github.com/cursorless-dev/cursorless/wiki/Common-recommendations
then: skip()

{user.search_engine} scout <user.cursorless_target>:
    text = user.cursorless_get_text(cursorless_target)
    user.search_with_search_engine(search_engine, text)

suggestion accept: key(cmd-y)
suggestion reject: key(cmd-n)

add to chat: key(cmd-l)
