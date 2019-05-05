#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   UI & UX\n\n"

# execute "sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string 'Laptop' && \
#          sudo scutil --set ComputerName 'laptop' && \
#          sudo scutil --set HostName 'laptop' && \
#          sudo scutil --set LocalHostName 'laptop'" \
#     "Set computer name"

# defaults write com.apple.finder QLEnableTextSelection -bool true

execute "defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true && \
        defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true" \
    "Avoid creating '.DS_Store' files on network or USB volumes"

execute "defaults write com.apple.menuextra.battery ShowPercent -string 'YES'" \
    "Show battery percentage from the menu bar"

# execute "sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true" \
#     "Show language menu in the top right corner of the boot screen"

execute "defaults write com.apple.CrashReporter UseUNC 1" \
    "Make crash reports appear as notifications"

# execute "defaults write com.apple.LaunchServices LSQuarantine -bool false" \
#     "Disable 'Are you sure you want to open this application?' dialog"

execute "defaults write com.apple.print.PrintingPrefs 'Quit When Finished' -bool true" \
    "Automatically quit the printer app once the print jobs are completed"

execute "defaults write com.apple.screencapture disable-shadow -bool true" \
    "Disable shadow in screenshots"

execute "defaults write com.apple.screencapture location -string '${HOME}/Screenshots'" \
    "Save screenshots to the Desktop"

execute "defaults write com.apple.screencapture show-thumbnail -bool false" \
    "Do not show thumbnail"

execute "defaults write com.apple.screencapture type -string 'png'" \
    "Save screenshots as PNGs"

execute "defaults write com.apple.screensaver askForPassword -int 1 && \
        defaults write com.apple.screensaver askForPasswordDelay -int 0"\
    "Require password immediately after into sleep or screen saver mode"

execute "defaults write -g AppleFontSmoothing -int 1" \
    "Enable subpixel font rendering on non-Apple LCDs"

execute "sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true" \
    "Enable HiDPI display modes (requires restart)"

execute "defaults write -g AppleShowScrollBars -string 'WhenScrolling'" \
    "Show scrollbars when scrolling"

execute "defaults write -g NSAutomaticWindowAnimationsEnabled -bool false" \
    "Disable window opening and closing animations."

execute "defaults write -g NSDisableAutomaticTermination -bool true" \
    "Disable automatic termination of inactive apps"

execute "defaults write -g NSNavPanelExpandedStateForSaveMode -bool true && \
        defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true" \
    "Expand save panel by default"

execute "defaults write -g NSTableViewDefaultSizeMode -int 2" \
    "Set sidebar icon size to medium"

execute "defaults write -g NSUseAnimatedFocusRing -bool false" \
    "Disable the over-the-top focus ring animation"

execute "defaults write -g NSWindowResizeTime -float 0.001" \
    "Accelerated playback when adjusting the window size."

execute "defaults write -g PMPrintingExpandedStateForPrint -bool true && \
        defaults write -g PMPrintingExpandedStateForPrint2 -bool true" \
    "Expand print panel by default"

execute "defaults write -g QLPanelAnimationDuration -float 0" \
    "Disable opening a Quick Look window animations."

execute "defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false" \
    "Disable resume system-wide"

execute "defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false" \
    "Save to disk (not to iCloud) by default"

execute "launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null" \
    "Stop iTunes from responding to the keyboard media keys"

execute "defaults write com.apple.BluetoothAudioAgent \"Apple Bitpool Min (editable)\" -int 40" \
    "Increase sound quality for Bluetooth headphones/headsets"

execute "sudo systemsetup -setrestartfreeze on" \
    "Restart automatically if the computer freezes"

killall "SystemUIServer" &> /dev/null
