#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_flutter() {

    # Install the latest stable version of flutter
    # (this will also set it as the default).

    execute \
        "git clone -b stable https://github.com/flutter/flutter.git /tmp/flutter && \
        sudo mv /tmp/flutter /usr/local" \
        "flutter (git clone stable branch)"

    execute \
        ". $LOCAL_SHELL_CONFIG_FILE && \
        flutter" \
        "flutter (initialize and build tool)"

}

add_flutter_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# flutter

export FLUTTER_DIR="/usr/local/flutter/"
export PATH="\$PATH:\$FLUTTER_DIR/bin"
export PATH="\$PATH:\$FLUTTER_DIR/bin/cache/dart-sdk/bin"
export PATH="\$PATH:\$HOME/.pub-cache/bin"

"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "flutter (update $LOCAL_SHELL_CONFIG_FILE)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   dart+flutter\n\n"

    print_in_green "\n    Follow the flutter install guide here: https://flutter.dev/docs/get-started/install/macos\n\n"

    . $LOCAL_SHELL_CONFIG_FILE

    if ! cmd_exists "flutter"; then
        install_flutter
        add_flutter_configs
    fi
    execute ". $LOCAL_SHELL_CONFIG_FILE && \
            flutter precache" \
        "flutter (precache)"
    execute ". $LOCAL_SHELL_CONFIG_FILE && \
            flutter upgrade" \
        "flutter (upgrade)"
    print_in_green "\n    please run 'flutter doctor'\n\n"

}

main
