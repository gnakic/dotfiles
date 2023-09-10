set -o allexport
. ./.env
set +o allexport

STOW_FOLDERS="git,vim,emacs,terminal,ghc"

pushd "$DOTFILES" || exit
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "Removing $folder"
    stow -D "$folder"
done
popd || exit
