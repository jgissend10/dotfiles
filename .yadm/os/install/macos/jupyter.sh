#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

declare -r LOCAL_SHELL_CONFIG_FILE="$HOME/.bash.local"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_jupyter_environment() {

    # Install the latest stable version of jupyter
    # (this will also set it as the default).

    declare -r PYTHON_VERSION="$1"
    declare -r VIRTUAL_ENV_NAME_PREFIX="$2"

    execute \
        "pyenv install -s $PYTHON_VERSION" \
        "pyenv (ensure version installed $PYTHON_VERSION)"

    if ! [[ -d $PYENV_ROOT/versions/$VIRTUAL_ENV_NAME_PREFIX-$PYTHON_VERSION ]]; then
        execute \
            "pyenv virtualenv $PYTHON_VERSION $VIRTUAL_ENV_NAME_PREFIX-$PYTHON_VERSION" \
            "virtualenv (virtualenv for jupyter \"$VIRTUAL_ENV_NAME_PREFIX-$PYTHON_VERSION\")"
    else
        print_success "virtualenv (virtualenv for jupyter \"$VIRTUAL_ENV_NAME_PREFIX-$PYTHON_VERSION\")"
    fi

    execute \
        ". $LOCAL_SHELL_CONFIG_FILE && \
            pyenv activate $VIRTUAL_ENV_NAME_PREFIX-$PYTHON_VERSION && \
            pip install jupyter && \
            pyenv deactivate" \
        "install"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   jupyter\n\n"

    if ! command -v pyenv 1>/dev/null 2>&1; then
        . $LOCAL_SHELL_CONFIG_FILE # Source to try to find pyenv
    fi

    if command -v pyenv 1>/dev/null 2>&1; then
        create_jupyter_environment "3.7.3" "jupyterenv"
    fi

    print_in_green "\n    'alias jupnote='PYENV_VERSION=jupyterenv-3.7.3 pyenv exec jupyter notebook'\n\n"

}

main
