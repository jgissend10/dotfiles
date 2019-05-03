#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"

# brew_install "Visual Studio Code" "visual-studio-code" "caskroom/cask" "cask"

#cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
#ok "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
#cp ./settings.json $HOME/Library/Application\ Support/Code/User/settings.json
#ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/

# code --install-extension akamud.vscode-theme-onedark
# code --install-extension alefragnani.project-manager
# code --install-extension austin.code-gnu-global
# code --install-extension codezombiech.gitignore
# code --install-extension CoenraadS.bracket-pair-colorizer-2
# code --install-extension Dart-Code.dart-code
# code --install-extension Dart-Code.flutter
# code --install-extension deerawan.vscode-dash
# code --install-extension DmitryDorofeev.empty-indent
# code --install-extension donjayamanne.git-extension-pack
# code --install-extension donjayamanne.githistory
# code --install-extension eamodio.gitlens
# code --install-extension humao.rest-client
# code --install-extension kaiwood.indentation-level-movement
# code --install-extension marus25.cortex-debug
# code --install-extension mechatroner.rainbow-csv
# code --install-extension mohsen1.prettify-json
# code --install-extension ms-python.python
# code --install-extension ms-vscode.cpptools
# code --install-extension oderwat.indent-rainbow
# code --install-extension particle.particle-vscode-core
# code --install-extension particle.particle-vscode-pack
# code --install-extension particle.particle-vscode-snippets
# code --install-extension particle.particle-vscode-theme
# code --install-extension PeterJausovec.vscode-docker
# code --install-extension redhat.vscode-yaml
# code --install-extension SirTori.indenticator
# code --install-extension vsciot-vscode.vscode-arduino
# code --install-extension ziyasal.vscode-open-in-github
