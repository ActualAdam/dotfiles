. ~/.env.sh
. ~/.antigen.zsh
. ~/.zsh_alias.zsh
. "/usr/local/opt/nvm/nvm.sh"
. ~/.env/madison-env.sh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle docker
antigen theme amuse

fortune -s -n 300 | cowsay

antigen apply

. <(azure --completion)

flyway () { docker run -it --rm --net host -v `pwd`:/flyway-4.0.3/sql sctechdev/flyway $@ }
