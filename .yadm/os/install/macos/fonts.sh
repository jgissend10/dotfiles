#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Fonts\n\n"

brew_install "Fira Code Nerd Font" "font-firacode-nerd-font" "caskroom/fonts" "cask"
brew_install "Fira Code Mono Nerd Font" "font-firacode-nerd-font-mono" "caskroom/fonts" "cask"