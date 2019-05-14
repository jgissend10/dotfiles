#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

code_ext_install() {

    declare -r EXT_NAME="$1"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Check if `mas` is installed.

    if ! cmd_exists "code"; then
        print_error "$EXT_NAME ('Visual Studio Code code cli' is not installed)"
        return 1
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Install the specified app.

    execute \
        "code-insiders --install-extension $EXT_NAME" \
        "$EXT_NAME (Installed Extension)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code - Insiders\n\n"

brew_install "Visual Studio Code" "visual-studio-code-insiders" "caskroom/cask" "cask"

execute "ln -sf \"/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code\" /usr/local/bin/code-insiders" \
    "code command (Link)"

VSCODE_USERDIR="$HOME/Library/Application Support/Code - Insiders/User"

execute "ln -sf $HOME/.vscode-insiders-conf/settings.json    \"$VSCODE_USERDIR/settings.json\"" \
    "settings.json (Link)"
execute "ln -sf $HOME/.vscode-insiders-conf/keybindings.json \"$VSCODE_USERDIR/keybindings.json\"" \
    "keybindings.json (Link)"
execute "ln -sf $HOME/.vscode-insiders-conf/snippets/        \"$VSCODE_USERDIR/snippets\"" \
    "snippets (Link)"

for ext in $(cat $HOME/.vscode-insiders-conf/vscode-extensions.txt); do
    code_ext_install "$ext"
done
