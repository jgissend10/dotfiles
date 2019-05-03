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
        "code --install-extension $EXT_NAME" \
        "$EXT_NAME (Installed Extension)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"

brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"

execute "ln -sf \"/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code\" /usr/local/bin/" \
    "code command (Link)"

VSCODE_USERDIR="$HOME/Library/Application Support/Code/User"

execute "ln -sf $HOME/.vscode-conf/settings.json    \"$VSCODE_USERDIR/settings.json\"" \
    "settings.json (Link)"
execute "ln -sf $HOME/.vscode-conf/keybindings.json \"$VSCODE_USERDIR/keybindings.json\"" \
    "keybindings.json (Link)"
execute "ln -sf $HOME/.vscode-conf/snippets/        \"$VSCODE_USERDIR/snippets\"" \
    "snippets (Link)"

for ext in $(cat $HOME/.vscode-conf/vscode-extensions.txt); do
    code_ext_install "$ext"
done
