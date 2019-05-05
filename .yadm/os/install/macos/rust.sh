#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_rust_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# rust

export PATH=\"\$HOME/.cargo/bin:\$PATH\"
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "rust (update $LOCAL_SHELL_CONFIG_FILE)"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   rust\n\n"

    brew_install "rustup" "rustup"

    if ! cmd_exists "rustc"; then
        execute "rustup-init -y --no-modify-path" "rustup (init)"
        add_rust_configs
    else
        execute ". $LOCAL_SHELL_CONFIG_FILE \
                && rustup update" \
            "rust (update)"
    fi

    execute ". $LOCAL_SHELL_CONFIG_FILE \
                && rustc --version" \
            "rust (verified)"

}

main
