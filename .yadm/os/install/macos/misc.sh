#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

brew_install "Alfred 3" "alfred" "caskroom/cask" "cask"
brew_install "Dash" "dash" "caskroom/cask" "cask"
brew_install "Discord" "discord" "caskroom/cask" "cask"
brew_install "dockutil" "dockutil"
brew_install "Dropbox" "dropbox" "caskroom/cask" "cask"
brew_install "go2shell" "go2shell" "caskroom/cask" "cask"
brew_install "iTerm2" "iterm2" "caskroom/cask" "cask"
brew_install "JetBrains Toolbox" "jetbrains-toolbox" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "Snagit" "snagit3" "caskroom/homebrew-versions" "cask"
brew_install "Sourcetree" "sourcetree" "caskroom/cask" "cask"
brew_install "Tunnelblick" "tunnelblick" "caskroom/cask" "cask"
brew_install "Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "VLC" "vlc" "caskroom/cask" "cask"
brew_install "yadm" "yadm"

