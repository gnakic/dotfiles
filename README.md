# Gabriel's dotfiles
The dotfiles themselves use `stow` to manage configuration symlinks to the root of `$HOME`.

Which folder is subjected to stowing is defined in the `STOW_FOLDERS` variable in both `install.sh` and `clean.sh`.

## Installation

```shell
git clone git@github.com:gnakic/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && ./install.sh
```
### Used tools

```shell
brew install git
brew install stow
brew install ripgrep
brew install bat
brew install fd
brew install coreutils
```