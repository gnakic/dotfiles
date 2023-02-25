# emacs

xcode-select --install
brew reinstall gcc libgccjit

brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules --with-natural-title-bar --with-native-comp

ln -s /opt/homebrew/opt/emacs-mac/Emacs.app /Applications/Emacs.app

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d

# ln -s "$DOTFILES_DIR"/.doom.d "$HOME"/.doom.d

~/.emacs.d/bin/doom install

defaults write org.gnu.Emacs HideDocumentIcon YES
defaults write org.gnu.Emacs TransparentTitleBar DARK