#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   pyenv\n\n"

# declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
# declare -r PYENV_DIRECTORY="$HOME/.pyenv"

brew_install "pyenv" "pyenv"
brew_install "readline" "readline"
brew_install "xz" "xz"
brew_install "pyenv-virtualenv" "pyenv-virtualenv"
