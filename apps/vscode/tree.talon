app: vscode
-
# This opens the file tree in the sidebar
bar tree: user.vscode("workbench.view.extension.filetree")

# File tree commands
file tree <user.letters>:
    user.run_rpc_command("talon-filetree.toggleDirectoryOrOpenFile", letters)
file tree parent <user.letters>:
    user.run_rpc_command("talon-filetree.closeParent", letters)
file tree <user.letters> <number>:
    user.run_rpc_command("talon-filetree.expandDirectory", letters, number)
file tree collapse <user.letters>:
    user.run_rpc_command("talon-filetree.expandDirectory", letters, 0)
file tree move <user.letters> to <user.letters>:
    user.run_rpc_command("talon-filetree.moveFile", letters_1, letters_2)
file tree move <user.letters> [to] root:
    user.run_rpc_command("talon-filetree.moveFile", letters_1)
# the recommended way to open a file is using the "toggleDirectoryOrOpenFile" command
# but this may be useful for people that want to separate the two actions
# e.g. to create very distinct commands that are easier for talon to differentiate
file tree open <user.letters>:
    user.run_rpc_command("talon-filetree.openFile", letters)
file tree rename <user.letters>:
    user.run_rpc_command("talon-filetree.renameFile", letters)
file tree create <user.letters>:
    user.run_rpc_command("talon-filetree.createFile", letters)
file tree delete <user.letters>:
    user.run_rpc_command("talon-filetree.deleteFile", letters)
file tree collapse root:
    user.run_rpc_command("talon-filetree.collapseRoot")
file tree select <user.letters>:
    user.run_rpc_command("talon-filetree.select", letters)
file tree git:
    user.run_rpc_command("talon-filetree.toggleGitIgnoredFiles")
file tree current:
    user.run_rpc_command("talon-filetree.revealCurrentFile")
