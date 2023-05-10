zmodload zsh/zprof
. ~/.env.sh
. ~/.antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle docker
antigen theme actualadam/zsh-themes inthelupine.zsh-theme
antigen bundle github
antigen bundle aws
antigen bundle vi-mode

antigen apply

. ~/.zsh_alias.zsh

set editind-mode vi
set blink-matching-paren on

export EDITOR=nvim
export PAGER=bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# zle-keymap-select () {
#   edit-mode-cursor
# }
#
# zle-line-init () {
#   edit-mode-cursor
# }
#
# zle-line-finish () {
#   edit-mode-cursoer
# }

function edit-mode-cursor () {
    if [ "$TERM" = "xterm-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # the command mode for vi
            echo -ne "\e[2 q"
        else
            # the insert mode for vi
            echo -ne "\e[4 q"
        fi
    fi
}

load_nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm use /lts/fermium
}

load_virtualenv() {
  /usr/local/bin/virtualenvwrapper.sh
  antigen bundle virtualenvwrapper
}


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

load_nvm

light() {
    yq -iy '.colors alias = "light"' ~/.config/alacritty/schemes.yml
}

dark() {
    yq -iy '.colors alias = "dark"' ~/.config/alacritty/schemes.yml
}

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
# echo "org.gradle.java.home=$JAVA_HOME" > /Users/actualadam/.gradle/gradle.properties

. "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
