# emacs

xcode-select --install

brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules
ln -s /opt/homebrew/opt/emacs-mac/Emacs.app /Applications/Emacs.app

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d

ln -s $DOTFILES_DIR/.doom.d $HOME/.doom.d

~/.emacs.d/bin/doom install