#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh
./bash.sh

./git.sh
./../nvm.sh
./bash_completions.sh
./browsers.sh
# ./compression_tools.sh
./fonts.sh
# ./gpg.sh
./image_tools.sh
./mac_app_store.sh
./misc.sh
./misc_tools.sh
./../npm.sh
./pyenv.sh
# ./quick_look.sh
# ./tmux.sh
# ./video_tools.sh
# ./../vim.sh
./visual_studio_code.sh
# ./web_font_tools.sh
