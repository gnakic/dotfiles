#!/usr/bin/env bash

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

STOW_FOLDERS="git,vim,terminal,ghc"

pushd "$DOTFILES" || exit
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "Removing $folder"
    stow -D --target "$HOME" "$folder"
done
popd || exit
