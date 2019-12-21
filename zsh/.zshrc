. ~/.env.sh
. ~/.antigen.zsh
. ~/.zsh_alias.zsh
. /usr/local/bin/virtualenvwrapper.sh
#. "/usr/local/opt/nvm/nvm.sh"

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle docker
antigen theme amuse
antigen bundle github 
antigen bundle aws
antigen bundle zsh_reload
antigen bundle vi-mode
antigen bundle virtualenvwrapper

fortune -s -n 300 | cowsay

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


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/actualadam/.sdkman"
[[ -s "/Users/actualadam/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/actualadam/.sdkman/bin/sdkman-init.sh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
