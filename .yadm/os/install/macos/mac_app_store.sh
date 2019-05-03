#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

mas_install() {

    declare -r APP_ID="$1"
    declare -r APP_READABLE_NAME="$2"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Check if `mas` is installed.

    if ! cmd_exists "mas"; then
        print_error "$APP_READABLE_NAME ('Mac App Store CLI' is not installed)"
        return 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install the specified app.

    execute \
        "mas install $APP_ID" \
        "$APP_READABLE_NAME"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Mac App Store\n\n"

brew_install "Mac App Store CLI" "mas"
execute "mas upgrade" "Upgrade installed apps"
mas_install "937984704" "Amphetamine"
mas_install "417375580" "BetterSnapTool"
mas_install "1081413713" "GIF Brewery 3"
mas_install "926036361" "LastPass"
mas_install "1295203466" "Microsoft Remote Desktop 10"
mas_install "410628904" "Wunderlist: ToDo List Tasks"
