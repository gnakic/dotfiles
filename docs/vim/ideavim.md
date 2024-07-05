# Doomed IdeaVim

Doom Emacs key bindings in IdeaVim, with some custom additions.

## Prequisites

- [AceJump](https://plugins.jetbrains.com/plugin/7086-acejump)
- [IdeaVim-EasyMotion](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion)
- [Find Pull Request](https://plugins.jetbrains.com/plugin/8262-find-pull-request)
- [Which-key](https://plugins.jetbrains.com/plugin/15976-which-key)

## Key Bindings

### +buffer

| Key binding          | Description             |
|:---------------------|:------------------------|
| `SPC b d`, `SPC b k` | Kill buffer             |
| `SPC b s`            | Save buffer             |
| `SPC b K`            | Kill all buffers        |
| `SPC b N`            | New empty buffer        |
| `SPC b O`            | Kill other buffers      |
| `SPC b S`            | Save all buffers        |
| `SPC b r`            | Recent buffer (location)|

### +code

| Key binding | Description                         |
|:------------|:------------------------------------|
| `SPC c D`   | Jump to references                  |
| `SPC c a`   | Execute Intention Action            |
| `SPC c c`   | Compile                             |
| `SPC c d`   | Jump to definition                  |
| `SPC c f`   | Format buffer/region                |
| `SPC c i`   | Find implementations                |
| `SPC c j`   | Jump to symbol in current workspace |
| `SPC c k`   | Show documentation                  |
| `SPC c o`   | Organize imports                    |
| `SPC c r`   | Rename                              |
| `SPC c t`   | Find type definition                |
| `SPC c C`   | Recompile                           |
| `SPC c m`   | Toggle bookmark                     |
| `SPC c b`   | Toggle breakpoint                   |

### +file

| Key binding | Description               |
|:------------|:--------------------------|
| `SPC f c`   | Open project editorconfig |
| `SPC f r`   | Recent files              |
| `SPC f s`   | Save file                 |
| `SPC f R`   | Rename/move file          |
| `SPC f y`   | Copy filename             |

### +git

| Key binding      | Description           |
|:-----------------|:----------------------|
| `SPC g '`        | GitHub menu           |
| `SPC g .`        | Git file actions      |
| `SPC g /`        | Git menu              |
| `SPC g [`, `[ d` | Jump to previous hunk |
| `SPC g ]`, `] d` | Jump to next hunk     |
| `SPC g b`        | Switch branch         |
| `SPC g r`        | Revert hunk           |
| `SPC g s`        | Status                |
| `SPC g t`        | Time machine          |
| `SPC g B`        | Blame                 |
| `SPC g C`        | Clone                 |
| `SPC g F`        | Fetch                 |
| `SPC g p`        | Push                  |
| `SPC g P`        | Pull                  |

#### +create

| Key binding | Description     |
|:------------|:----------------|
| `SPC g c b` | Branch          |
| `SPC g c p` | Pull request    |
| `SPC g c r` | Initialize repo |
| `SPC g c R` | Clone repo      |

#### +list

| Key binding | Description        |
|:------------|:-------------------|
| `SPC g l p` | List pull requests |

#### +open

| Key binding | Description           |
|:------------|:----------------------|
| `SPC g o o` | Browse file or region |
| `SPC g o p` | Browse a pull request |

### +help

| Key binding | Description           |
|:------------|:----------------------|
| `SPC h e`   | Show Event Log        |
| `SPC h r`   | Reload IdeaVim config |
| `SPC h t`   | Change theme          |

### +insert

| Key binding                            | Description           |
|:---------------------------------------|:----------------------|
| `SPC i e` (`M-SPC i e` in insert mode) | Insert emoji/unicode  |
| `SPC i s` (`M-SPC i s` in insert mode) | Insert Live Template  |
| `SPC i u` (`M-SPC i u` in insert mode) | Insert emoji/unicode  |
| `SPC i y` (`M-SPC i y` in insert mode) | Insert from clipboard |

### +open

| Key binding | Description               |
| :---------- | :------------------------ |
| `SPC o f`   | New window                |
| `SPC o F`   | Select window             |
| `SPC o o`   | Reveal in filer           |
| `SPC o p`   | Toggle Project View       |
| `SPC o P`   | Find file in Project View |
| `SPC o t`   | Open terminal             |
| `SPC o T`   | Open terminal here        |

### +project

| Key binding | Description              |
|:------------|:-------------------------|
| `SPC p !`   | Run cmd in project root  |
| `SPC p i`   | Invalidate project cache |
| `SPC p p`   | Switch projects          |
| `SPC p R`   | Run project              |
| `SPC p D`   | Debug project            |
| `SPC p t`   | Show TODO                |
| `SPC p z`   | List project tasks       |
| `SPC p s`   | Stop project task        |

### +toggle

| Key binding | Description           |
|:------------|:----------------------|
| `SPC t b`   | Presentation Mode     |
| `SPC t F`   | Fullscreen            |
| `SPC t l`   | Line numbers          |
| `SPC t r`   | Read-only mode        |
| `SPC t w`   | Soft line wrapping    |
| `SPC t z`   | Distraction Free Mode |
| `SPC t Z`   | Zen Mode              |

### +search

| Key binding        | Description    |
|:-------------------|:---------------|
| `SPC /`, `SPC s p` | Search project |

### +window

| Key binding          | Description     |
|:---------------------|:----------------|
| `SPC w c`, `SPC w d` | Window delete   |
| `SPC w h`            | Window left     |
| `SPC w j`            | Window down     |
| `SPC w k`            | Window up       |
| `SPC w l`            | Window right    |
| `SPC w s`            | Window split    |
| `SPC w v`            | Window vsplit   |
| `SPC w w`            | Next window     |
| `SPC w W`            | Previous window |
| `SPC w m`            | Maximize window |

### expand-region

You need to source `expand-region.vim` to enable these key bindings:

| Key binding | Description                                       |
|:------------|:--------------------------------------------------|
| `K`       | Increase selected region by semantic units        |
| `J`       | Contract the selected region to its previous size |

### In Project View

| Key binding | Description        |
|:------------|:-------------------|
| `g r`       | Refresh            |
| `j`         | Next line          |
| `k`         | Previous line      |
| `l`         | DWIM               |
| `K`         | Go to parent       |
| `L`         | Next neighbour     |
| `H`         | Previous neighbour |
| `o o`       | Open no split      |
| `o s`       | Open vertical      |
| `o v`       | Open horizontal    |
| `q`         | Quit               |

### Misc

| Key binding | Description                          |
|:------------|:-------------------------------------|
| `SPC RET`   | Jump to bookmark                     |
| `SPC <`     | Switch buffer (Switcher)             |
| `SPC [`     | Insert blank line above current line |
| `SPC ]`     | Insert blank line below current line |

