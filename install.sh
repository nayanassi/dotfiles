#!/bin/bash

# If we are in a codespace:

if ("$CODESPACES" == "true") then
    # Copy the vscode settings into the codespace:
    cp vscode/settings.json ~/.vscode-remote/data/Machine/settings.json

    # Fix the git_ps1 prompt:
    curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
    source ~/.bash_git
    
    # Copy over the .bashrc and script files:    
    cp -R .scripts ~/.scripts
    cp .bashrc ~/.bashrc
    cp .bash_profile ~/.bash_profile
    source ~/.bash_profile
    source ~/.bashrc
    
    # Install useful extensions:
    code --install-extension yoshinorin.current-file-path
    code --install-extension sleistner.vscode-fileutils
    code --install-extension peterbe.ghdocs-goer
fi
