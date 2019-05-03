#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Bash Completions\n\n"

brew_install "Brew Cask" "brew-cask-completion"
brew_install "django" "django-completion"
brew_install "Docker" "docker-completion"
brew_install "Docker Compose" "docker-compose-completion"
brew_install "Open (Applications .apps)" "open-completion"
brew_install "pip" "pip-completion"

