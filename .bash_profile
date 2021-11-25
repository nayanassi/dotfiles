source ~/.profile
LS_COLORS='di=1;0;42:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35;40:*.rpm=90'
export LS_COLORS

# Next 2 lines from https://michael-kuehnel.de/node.js/2015/09/08/using-vm-to-switch-node-versions.html
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

alias   ls='ls -bFGH'
alias   gogit='cd ~/git-repos/docs-internal'
alias   nt='~/programming/bash-scripts/notetaker.sh'

alias   branchdate='git for-each-ref --sort=-committerdate refs/heads/ --format="%(refname)   ----  %(committerdate) - %(authorname)" | sed "s/refs\/heads\///g"'
alias   bd='bash ~/programming/bash-scripts/branchlister.sh'
alias   bl='bash ~/programming/bash-scripts/branchlister.sh'
alias   bb='bash ~/programming/bash-scripts/branchpicker.sh'
alias   bb1='bash ~/programming/bash-scripts/branchpicker.sh 1'
alias   bb2='bash ~/programming/bash-scripts/branchpicker.sh 2'
alias   bb3='bash ~/programming/bash-scripts/branchpicker.sh 3'
alias   bb4='bash ~/programming/bash-scripts/branchpicker.sh 4'
alias   bb5='bash ~/programming/bash-scripts/branchpicker.sh 5'
alias   bb6='bash ~/programming/bash-scripts/branchpicker.sh 6'
alias   bb7='bash ~/programming/bash-scripts/branchpicker.sh 7'
alias   bb8='bash ~/programming/bash-scripts/branchpicker.sh 8'

# lu = laptop under monitor, ll = laptop left of monitor, 1 = big monitor, 2 = Dell monitor
alias   lu1='displayplacer "id:5092753A-827A-EC3D-BE38-C3DFE02BDE9A res:1920x1200 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0" "id:7B1B27C9-8B33-CAE1-6864-E990C08CC24B res:1792x1120 hz:59 color_depth:4 scaling:on origin:(128,1200) degree:0"'
alias   ll1='displayplacer "id:064659EA-6F86-4244-EB89-D4DF034B1BD2 res:3008x1692 hz:60 color_depth:8 scaling:on origin:(0,0) degree:0" "id:7B1B27C9-8B33-CAE1-6864-E990C08CC24B res:1792x1120 hz:59 color_depth:4 scaling:on origin:(-1792,920) degree:0"'
alias   lu2='displayplacer "id:064659EA-6F86-4244-EB89-D4DF034B1BD2 res:3008x1692 hz:60 color_depth:8 scaling:on origin:(0,0) degree:0" "id:7B1B27C9-8B33-CAE1-6864-E990C08CC24B res:1792x1120 hz:59 color_depth:4 scaling:on origin:(688,1692) degree:0"'
alias   ll2='displayplacer "id:5092753A-827A-EC3D-BE38-C3DFE02BDE9A res:1920x1200 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0" "id:7B1B27C9-8B33-CAE1-6864-E990C08CC24B res:1792x1120 hz:59 color_depth:4 scaling:on origin:(-1792,0) degree:0"'
alias   lm='displayplacer "id:5092753A-827A-EC3D-BE38-C3DFE02BDE9A+7B1B27C9-8B33-CAE1-6864-E990C08CC24B+064659EA-6F86-4244-EB89-D4DF034B1BD2 res:1920x1200 hz:59 color_depth:8 scaling:off origin:(0,0) degree:0"'

alias ddi='cd ~/git-repos/docs-internal'
alias ddc='cd ~/git-repos/docs-content'
alias ddo='cd ~/git-repos/docs'
alias ghgh='cd ~/git-repos/github'

alias   mylog='git log --author=hubwriter --oneline -5 --no-merges'
gogit

source ~/.git-prompt.sh
PS1='\[\033[1;36m\]\w\[\033[0m\] \[\033[1;32m\]$(__git_ps1)\[\033[0m\]'$'\n\$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM='verbose git'
export GIT_PS1_SHOWDIRTYSTATE GIT_PS1_SHOWUPSTREAM
export PATH=${PATH}:~/.node/bin:~/.nodenv/versions/14.13.0/
export HOMEBREW_AUTO_UPDATE_SECS=3600
export EDITOR=vi
export TOKEN=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
eval $(ssh-agent); ssh-add
eval "$(nodenv init -)"
eval "$(rbenv init -)"

#
echo -e "

####################################################
#
#  Welcome to hostname: ${HOSTNAME}
#  You are logged in as: ${USERNAME}
#  Bash config file: ${BASH_SOURCE[0]}
#  \$HOME = ${HOME}
#
####################################################

Enter \"alias\" to list the available aliased commands

pwd: `pwd`"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.bash.inc' ]; then . '~/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.bash.inc' ]; then . '~/google-cloud-sdk/completion.bash.inc'; fi
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH=~/git-repos/awssume/bin:$PATH
export PATH=~/git-repos/awssume/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next lines are for iTerm2 badges
# see: https://medium.com/@adrian_cooney/iterm-tip-add-custom-badges-on-a-per-directory-basis-1d54dfc6b6e4

function iterm2_print_user_vars() {
  iterm2_set_user_var badge $(dir_badges)
}

function dir_badges() {
    while read directory badge || [[ -n "$directory" ]]
    do
        if [[ "$PWD" == $directory* ]]; then
            echo $badge
            break
        fi
    done < ~/.badges
}
export GPG_TTY=$(tty)
