#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"
declare PYENV_ROOT="$HOME/.pyenv"

CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

add_pyenv_configs() {

    declare -r CONFIGS="
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# pyenv

export PYENV_ROOT=\"$HOME/.pyenv\"
export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
if command -v pyenv 1>/dev/null 2>&1; then
    eval \"\$(pyenv init -)\"
fi
if which pyenv-virtualenv-init > /dev/null; then
    eval \"\$(pyenv virtualenv-init -)\";
fi
"

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    execute \
        "printf '%s' '$CONFIGS' >> $LOCAL_SHELL_CONFIG_FILE \
            && . $LOCAL_SHELL_CONFIG_FILE" \
        "pyenv (update $LOCAL_SHELL_CONFIG_FILE)"

}

install_latest_stable_python() {

    # Install the latest stable version of Node
    # (this will also set it as the default).

    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && pyenv install-latest -s" \
        "pyenv (install latest python)"
}

install_pyenv() {

    # Install `pyenv` and add the necessary
    # configs in the local shell config file.

    brew_install "pyenv (install)" \
        "pyenv" \
    && brew_install "openssl" "openssl" \
    && brew_install "readline" "readline" \
    && brew_install "xz" "xz" \
    && brew_install "pyenv-virtualenv" "pyenv-virtualenv" \
    && execute "git clone git://github.com/pyenv/pyenv-update.git $PYENV_ROOT/plugins/pyenv-update" \
        "pyenv update plugin (install)" \
    && execute "git clone https://github.com/momo-lab/pyenv-install-latest.git $PYENV_ROOT/plugins/pyenv-install-latest" \
        "pyenv install-latest plugin (install)" \
    && add_pyenv_configs

}

update_pyenv() {

    execute \
        "pyenv update" \
        "pyenv (upgrade)"

}

install_python_version() {

    # Install the latest stable version of Node
    # (this will also set it as the default).

    declare -r PYTHON_VERSION="$1"

    execute \
        ". $LOCAL_SHELL_CONFIG_FILE \
            && pyenv install -s $PYTHON_VERSION" \
        "pyenv (install $PYTHON_VERSION)"
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   pyenv\n\n"

    if [ ! -d "$PYENV_ROOT" ]; then
        install_pyenv
    else
        update_pyenv
    fi

    install_latest_stable_python

    declare -a PYTHONS=(
        "3.7.3"
    )

    for i in "${PYTHONS[@]}"; do
        install_python_version "$i"
    done

}

main
