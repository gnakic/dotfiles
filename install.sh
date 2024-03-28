DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

STOW_FOLDERS="git,vim,emacs,terminal,ghc"

pushd "$DOTFILES" || exit
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D "$folder"
    stow "$folder"
done
popd || exit
