set -o allexport
. ./.env
set +o allexport

STOW_FOLDERS="git,emacs,zsh"

pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D $folder
    stow $folder
done
popd