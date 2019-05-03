#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   iTerm2\n\n"

if [ -d "$HOME/.iterm2/preferences" ]; then
  # Specify the preferences directory
  execute "defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string \"$HOME/.iterm2/preferences\"" \
    "Specify the preferences directory"
  # Tell iTerm2 to use the custom preferences in the directory
  execute "defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true" \
    "Tell iTerm2 to use the custom preferences in the directory"
fi
