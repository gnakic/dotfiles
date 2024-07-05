# Somewhat Doom Emacs keybindings for Visual Studio Code

Makes your `settings.json` huge as it lacks config file support, no proper which-key for that editor but here they go:

```json5
{
  "vim.useSystemClipboard": true,
  "vim.highlightedyank.enable": true,
  "vim.leader": " ",
  "vim.easymotion": true,
  "vim.easymotionKeys": "hklyuiopnm,qwertzxcvbasdgjf.",
  "vim.surround": true,
  "vim.visualModeKeyBindings": [
    {
      "before": [
        "J"
      ],
      "commands": [
        "editor.action.smartSelect.shrink"
      ]
    },
    {
      "before": [
        "K"
      ],
      "commands": [
        "editor.action.smartSelect.grow"
      ]
    },
  ],
  "vim.normalModeKeyBindings": [
    // easy motion
    {
      "before": [
        "g",
        "s"
      ],
      "after": [
        "<leader>",
        "<leader>"
      ]
    },
    // expand region
    {
      "before": [
        "J"
      ],
      "commands": [
        "editor.action.smartSelect.shrink"
      ]
    },
    {
      "before": [
        "K"
      ],
      "commands": [
        "editor.action.smartSelect.grow"
      ]
    },
    // quick commands
    {
      "before": [
        "<leader>",
        "/"
      ],
      "commands": [
        "workbench.action.findInFiles"
      ]
    },
    {
      "before": [
        "<leader>",
        "."
      ],
      "commands": [
        "workbench.action.quickOpen"
      ]
    },
    {
      "before": [
        "<leader>",
        "<"
      ],
      "commands": [
        "workbench.action.showAllEditors"
      ]
    },
    {
      "before": [
        "<leader>",
        "`"
      ],
      "commands": [
        "workbench.action.navigateLast"
      ]
    },
    {
      "before": [
        "<leader>",
        "<CR>"
      ],
      "commands": [
        "bookmarks.list"
      ]
    },
    // buffer
    {
      "before": [
        "<leader>",
        "b",
        "b"
      ],
      "commands": [
        "workbench.action.showAllEditors"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "d"
      ],
      "commands": [
        "workbench.action.closeActiveEditor"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "k"
      ],
      "commands": [
        "workbench.action.closeActiveEditor"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "s"
      ],
      "commands": [
        "workbench.action.files.save"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "K"
      ],
      "commands": [
        "workbench.action.closeAllEditors"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "N"
      ],
      "commands": [
        "welcome.showNewFileEntries"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "O"
      ],
      "commands": [
        "workbench.action.closeOtherEditors"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "S"
      ],
      "commands": [
        "workbench.action.files.saveAll"
      ]
    },
    {
      "before": [
        "[",
        "b"
      ],
      "commands": [
        "workbench.action.previousEditor"
      ]
    },
    {
      "before": [
        "]",
        "b"
      ],
      "commands": [
        "workbench.action.nextEditor"
      ]
    },
    {
      "before": [
        "<leader>",
        "b",
        "r"
      ],
      "commands": [
        "workbench.action.openRecent"
      ]
    },
    // code
    {
      "before": [
        "<leader>",
        "c",
        "D"
      ],
      "commands": [
        "editor.action.goToReferences"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "a"
      ],
      "commands": [
        "editor.action.quickFix"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "c"
      ],
      "commands": [
        "workbench.action.tasks.build"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "d"
      ],
      "commands": [
        "editor.action.revealDefinition"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "f"
      ],
      "commands": [
        "editor.action.formatDocument"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "i"
      ],
      "commands": [
        "workbench.action.gotoSymbol"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "j"
      ],
      "commands": [
        "workbench.action.showAllSymbols"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "k"
      ],
      "commands": [
        "editor.action.showHover"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "o"
      ],
      "commands": [
        "editor.action.organizeImports"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "m"
      ],
      "commands": [
        "bookmarks.toggle"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "b"
      ],
      "commands": [
        "editor.debug.action.toggleBreakpoint"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "r"
      ],
      "commands": [
        "editor.action.rename"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "t"
      ],
      "commands": [
        "editor.action.goToTypeDefinition"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "C"
      ],
      "commands": [
        "workbench.action.tasks.build"
      ]
    },
    {
      "before": [
        "<leader>",
        "c",
        "x"
      ],
      "commands": [
        "workbench.action.showErrorsWarnings"
      ]
    },
    {
      "before": [
        "[",
        "e"
      ],
      "commands": [
        "editor.action.marker.prev"
      ]
    },
    {
      "before": [
        "]",
        "e"
      ],
      "commands": [
        "editor.action.marker.prev"
      ]
    },
    {
      "before": [
        "[",
        "["
      ],
      "commands": [
        "gotoNextPreviousMember.previousMember"
      ]
    },
    {
      "before": [
        "]",
        "]"
      ],
      "commands": [
        "gotoNextPreviousMember.nextMember"
      ]
    },
    // file
    {
      "before": [
        "<leader>",
        "f",
        "c"
      ],
      "commands": [
        "workbench.action.openWorkspaceSettingsFile"
      ]
    },
    {
      "before": [
        "<leader>",
        "f",
        "f"
      ],
      "commands": [
        "workbench.action.quickOpen"
      ]
    },
    {
      "before": [
        "<leader>",
        "f",
        "r"
      ],
      "commands": [
        "workbench.action.openRecent"
      ]
    },
    {
      "before": [
        "<leader>",
        "f",
        "s"
      ],
      "commands": [
        "workbench.action.files.save"
      ]
    },
    {
      "before": [
        "<leader>",
        "f",
        "y"
      ],
      "commands": [
        "copyFilePath"
      ]
    },
    {
      "before": [
        "<leader>",
        "f",
        "y"
      ],
      "commands": [
        "copyFilePath"
      ]
    },
    // git
    {
      "before": [
        "<leader>",
        "g",
        "."
      ],
      "commands": [
        "workbench.scm.toggleVisibility"
      ]
    },
    {
      "before": [
        "]",
        "d"
      ],
      "commands": [
        "editor.action.marker.next"
      ]
    },
    {
      "before": [
        "[",
        "d"
      ],
      "commands": [
        "editor.action.marker.prev"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "b"
      ],
      "commands": [
        "git.checkout"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "r"
      ],
      "commands": [
        "git.revertSelectedRanges"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "s"
      ],
      "commands": [
        "gitlens.showQuickRepoStatus"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "B"
      ],
      "commands": [
        "gitlens.toggleFileBlame"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "t"
      ],
      "commands": [
        "gitlens.showQuickFileHistory"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "C"
      ],
      "commands": [
        "git.clone"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "F"
      ],
      "commands": [
        "git.fetchAll"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "p"
      ],
      "commands": [
        "git.push"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "P"
      ],
      "commands": [
        "git.pull"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "S"
      ],
      "commands": [
        "git.stage"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "c",
        "b"
      ],
      "commands": [
        "git.branch"
      ]
    },
    {
      "before": [
        "<leader>",
        "g",
        "c",
        "r"
      ],
      "commands": [
        "git.init"
      ]
    },
    // help
    {
      "before": [
        "<leader>",
        "h",
        "e",
      ],
      "commands": [
        "workbench.panel.output.focus"
      ]
    },
    // open
    {
      "before": [
        "<leader>",
        "o",
        "p",
      ],
      "commands": [
        "workbench.view.explorer"
      ]
    },
    {
      "before": [
        "<leader>",
        "o",
        "t",
      ],
      "commands": [
        "workbench.action.createTerminalEditorSide"
      ]
    },
    // project
    {
      "before": [
        "<leader>",
        "p",
        "p",
      ],
      "commands": [
        "projectManager.listProjects"
      ]
    },
    {
      "before": [
        "<leader>",
        "p",
        "t",
      ],
      "commands": [
        "workbench.view.extension.todo-tree-container"
      ]
    },
    {
      "before": [
        "<leader>",
        "p",
        "z",
      ],
      "commands": [
        "workbench.action.tasks.openWorkspaceFileTasks"
      ]
    },
    {
      "before": [
        "<leader>",
        "p",
        "R",
      ],
      "commands": [
        "workbench.action.tasks.reRunTask"
      ]
    },
    {
      "before": [
        "<leader>",
        "p",
        "D",
      ],
      "commands": [
        "workbench.action.debug.start"
      ]
    },
    {
      "before": [
        "<leader>",
        "p",
        "s",
      ],
      "commands": [
        "workbench.action.tasks.terminate"
      ]
    },
    // toggle
    {
      "before": [
        "<leader>",
        "t",
        "Z",
      ],
      "commands": [
        "workbench.action.toggleZenMode"
      ]
    },
    {
      "before": [
        "<leader>",
        "t",
        "F",
      ],
      "commands": [
        "workbench.action.toggleFullScreen"
      ]
    },
    // search
    {
      "before": [
        "<leader>",
        "s",
        "p",
      ],
      "commands": [
        "workbench.action.findInFiles"
      ]
    },
    {
      "before": [
        "<leader>",
        "s",
        "i",
      ],
      "commands": [
        "workbench.action.gotoSymbol"
      ]
    },
    // window
    {
      "before": [
        "<leader>",
        "w",
        "c",
      ],
      "commands": [
        "workbench.action.closeActiveEditor"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "d",
      ],
      "commands": [
        "workbench.action.closeActiveEditor"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "h",
      ],
      "commands": [
        "workbench.action.focusLeftGroup"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "j",
      ],
      "commands": [
        "workbench.action.focusBelowGroup"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "k",
      ],
      "commands": [
        "workbench.action.focusAboveGroup"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "l",
      ],
      "commands": [
        "workbench.action.focusRightGroup"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "s",
      ],
      "commands": [
        "workbench.action.splitEditorOrthogonal"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "v",
      ],
      "commands": [
        "workbench.action.splitEditor"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "w",
      ],
      "commands": [
        "workbench.action.focusNextGroup"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "W",
      ],
      "commands": [
        "workbench.action.focusPreviousGroup"
      ]
    },
    {
      "before": [
        "<leader>",
        "w",
        "w"
      ],
      "commands": [
        "workbench.action.minimizeOtherEditors"
      ]
    }
  ]
}
```