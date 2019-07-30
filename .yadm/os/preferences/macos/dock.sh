#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dock\n\n"

execute "defaults write com.apple.dock autohide -bool true" \
    "Automatically hide/show the Dock"

execute "defaults write com.apple.dock autohide-delay -float 0" \
    "Disable the hide Dock delay"

execute "defaults write com.apple.dock autohide-time-modifier -float .5" \
    "Set the animation to half time when hiding/showing the Dock"

execute "defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true" \
    "Enable spring loading for all Dock items"

execute "defaults write com.apple.dock expose-animation-duration -float 0.1" \
    "Make all Mission Control related animations faster."

execute "defaults write com.apple.dock expose-group-by-app -bool false" \
    "Do not group windows by application in Mission Control"

execute "defaults write com.apple.dock launchanim -bool false" \
    "Disable the opening of an application from the Dock animations."

execute "defaults write com.apple.dock mineffect -string 'scale'" \
    "Change minimize/maximize window effect"

execute "defaults write com.apple.dock minimize-to-application -bool true" \
    "Reduce clutter by minimizing windows into their application icons"

execute "defaults write com.apple.dock mru-spaces -bool false" \
    "Do not automatically rearrange spaces based on most recent use"

execute "defaults write com.apple.dock persistent-apps -array && \
        defaults write com.apple.dock persistent-others -array " \
    "Wipe all app icons"

execute "defaults write com.apple.dock show-process-indicators -bool true" \
    "Show indicator lights for open applications"

execute "defaults write com.apple.dock showhidden -bool true" \
    "Make icons of hidden applications translucent"

execute "defaults write com.apple.dock tilesize -int 60" \
    "Set icon size"

execute "defaults write com.apple.dock scroll-to-open -bool true" \
    "Enable scroll gestures for Dock icons"

execute "dockutil --no-restart --remove all" \
    "Remove all apps from the the dock."
execute "dockutil --no-restart --add \"/Applications/Firefox.app\"" \
    "Add Firefox to the dock."
execute "dockutil --no-restart --add \"/Applications/Amphetamine.app\"" \
    "Add Amphetamine to the dock."
execute "dockutil --no-restart --add \"/Applications/Discord.app\"" \
    "Add Discord to the dock."
execute "dockutil --no-restart --add \"/Applications/Slack.app\"" \
    "Add Slack to the dock."
execute "dockutil --no-restart --add \"/Applications/iTerm.app\"" \
    "Add iTerm to the dock."
execute "dockutil --no-restart --add \"/Applications/Spotify.app\"" \
    "Add Spotify to the dock."
execute "dockutil --no-restart --add \"/Applications/Visual Studio Code.app\"" \
    "Add Visual Studio Code to the dock."
execute "dockutil --no-restart --add \"/Applications/Visual Studio Code - Insiders.app\"" \
    "Add Visual Studio Code - Insiders to the dock."
execute "dockutil --no-restart --add \"/Applications/LastPass.app\"" \
    "Add LastPass to the dock."
    execute "dockutil --no-restart --add \"/Applications/Google Chrome.app\"" \
    "Add Google Chrome to the dock."
execute "dockutil --no-restart --add \"/Applications/System Preferences.app\"" \
    "Add System Preferences to the dock."
execute "dockutil --no-restart --add \"/Applications/Utilities/Activity Monitor.app\"" \
    "Add Activity Monitor to the dock."
execute "dockutil --no-restart --section others --add '~/Downloads' --view grid --display folder --sort dateadded" \
    "Add ~/Downloads to the dock."

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen

execute "defaults write com.apple.dock wvous-tl-corner -int 2 && \
        defaults write com.apple.dock wvous-tl-modifier -int 0" \
    "Top left screen corner → Mission Control"

execute "defaults write com.apple.dock wvous-tr-corner -int 4 && \
        defaults write com.apple.dock wvous-tr-modifier -int 0" \
    "Top right screen corner → Desktop"

execute "defaults write com.apple.dock wvous-bl-corner -int 5 && \
        defaults write com.apple.dock wvous-bl-modifier -int 0" \
    "Bottom left screen corner → Start screen saver"

execute "defaults write com.apple.dock wvous-br-corner -int 13 && \
        defaults write com.apple.dock wvous-br-modifier -int 0" \
    "Bottom right screen corner → Lock Screen"

killall "Dock" &> /dev/null
