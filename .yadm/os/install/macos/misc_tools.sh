#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "AWS CLI" "awscli"
brew_install "Gas Mask" "gas-mask" "caskroom/cask" "cask"
brew_install "jq" "jq"
brew_install "lastpass-cli" "lastpass-cli"
brew_install "nmap" "nmap"
brew_install "screenfetch" "screenfetch"
brew_install "tree" "tree"
brew_install "wget" "wget"
# brew_install "ShellCheck" "shellcheck"
# brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"

# if [ -d "$HOME/.nvm" ]; then
#     brew_install "Yarn" "yarn"
# fi
