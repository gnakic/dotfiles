set -o allexport
. ./.env
set +o allexport

STOW_FOLDERS="git,vim,terminal,ghc"

pushd "$DOTFILES" || exit
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D "$folder"
    stow "$folder"
done
popd || exit