#!/bin/bash

# If we are in a codespace:

if ("$CODESPACES" == "true") then
    # Copy the vscode settings into the codespace:
    cp vscode/settings.json ~/.vscode-remote/data/Machine/settings.json

    # Copy files into the codespace:    
    cp -R .scripts ~/.scripts            # .scripts directory contains the branchlister scripts
    cp .git-prompt.sh ~/.git-prompt.sh.  # this add the Git prompt
    cp .bashrc ~/.bashrc                 # copy the .bashrc file
    cp .bash_profile ~/.bash_profile     # copy the .bash_profile file 
    source ~/.bashrc                     # run the .bashrc
    
    echo "To install useful extensions, run the command: run.sh"
fi
