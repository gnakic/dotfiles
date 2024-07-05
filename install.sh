#!/usr/bin/env bash

function check_stow() {
    if ! hash "stow" > /dev/null 2>&1; then
        if [ "$(uname)" == "Darwin" ]; then
            brew install stow
        elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
            sudo apt update
            sudo apt install stow
        fi
    fi
}

check_stow

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

STOW_FOLDERS="git,vim,terminal,ghc"

pushd "$DOTFILES" || exit
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D --target "$HOME" "$folder"
    stow --adopt --target "$HOME" "$folder"
done
popd || exit

git reset --hard
