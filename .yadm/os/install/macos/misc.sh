#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

# brew_install "Android File Transfer" "android-file-transfer" "caskroom/cask" "cask"
# brew_install "eyeD3" "eye-d3"
# brew_install "Spectacle" "spectacle" "caskroom/cask" "cask"
# brew_install "Transmission" "transmission" "caskroom/cask" "cask"
brew_install "Alfred 3" "alfred" "caskroom/cask" "cask"
brew_install "dockutil" "dockutil"
brew_install "Discord" "discord" "caskroom/cask" "cask"
brew_install "Dropbox" "dropbox" "caskroom/cask" "cask"
brew_install "go2shell" "go2shell" "caskroom/cask" "cask"
brew_install "iTerm2" "iterm2" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "Sourcetree" "sourcetree" "caskroom/cask" "cask"
brew_install "Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "VLC" "vlc" "caskroom/cask" "cask"
brew_install "yadm" "yadm"

# cask "docker"
# cask "etcher"
# cask "snagit"
# cask "spotify"

