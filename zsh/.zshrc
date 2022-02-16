zmodload zsh/zprof
. ~/.env.sh
. ~/.antigen.zsh
. ~/.zsh_alias.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle docker
antigen theme amuse
antigen bundle github 
antigen bundle aws
antigen bundle zsh_reload
antigen bundle vi-mode

antigen apply

set editind-mode vi
set blink-matching-paren on 


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

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
# echo "org.gradle.java.home=$JAVA_HOME" > /Users/actualadam/.gradle/gradle.properties

. "$HOME/.sdkman/bin/sdkman-init.sh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/actualadam/ws/cs-lingest/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/actualadam/ws/cs-lingest/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/actualadam/ws/cs-lingest/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/actualadam/ws/cs-lingest/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/actualadam/ws/cs-flood/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/actualadam/ws/cs-flood/node_modules/tabtab/.completions/slss.zsh
