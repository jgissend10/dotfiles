#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous Tools\n\n"

brew_install "AWS CLI" "awscli"
brew_install "Android Platform Tools" "android-platform-tools" "caskroom/cask" "cask"
brew_install "App Cleaner" "appcleaner" "caskroom/cask" "cask"
brew_install "Calibre" "calibre" "caskroom/cask" "cask"
brew_install "Cyberduck" "cyberduck" "caskroom/cask" "cask"
brew_install "Docker" "docker" "caskroom/cask" "cask"
brew_install "Fenix" "fenix" "caskroom/cask" "cask"
brew_install "Gas Mask" "gas-mask" "caskroom/cask" "cask"
brew_install "Grand Perspective" "grandperspective" "caskroom/cask" "cask"
brew_install "jq" "jq"
brew_install "lastpass-cli" "lastpass-cli"
brew_install "Mockoon" "mockoon" "caskroom/cask" "cask"
brew_install "nmap" "nmap"
brew_install "pipeviewer" "pv"
brew_install "Postman" "postman" "caskroom/cask" "cask"
brew_install "screenfetch" "screenfetch"
brew_install "screenresolution" "screenresolution"
brew_install "ShellCheck" "shellcheck"
brew_install "Spotify" "spotify" "caskroom/cask" "cask"
brew_install "Steam" "steam" "caskroom/cask" "cask"
brew_install "tree" "tree"
brew_install "watch" "watch"
brew_install "wget" "wget"