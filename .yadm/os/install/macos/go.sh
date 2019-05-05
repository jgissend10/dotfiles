#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_go_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# go

export PATH=\"\$(go env GOPATH)/bin:\$PATH\"
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "go (update $LOCAL_SHELL_CONFIG_FILE)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   go\n\n"

    brew_install "go" "go"

    . $LOCAL_SHELL_CONFIG_FILE # source it incase the PATH has updated

    if ! [[ ":$PATH:" == *":$(go env GOPATH)/bin:"* ]]; then
        add_go_configs
    fi

    execute ". $LOCAL_SHELL_CONFIG_FILE \
                && go version" \
            "go (verified)"

}

main
