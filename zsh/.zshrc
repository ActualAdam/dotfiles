export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:$PATH"
. ~/.antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme agnoster

antigen bundle willghatch/zsh-snippets
bindkey '\ee' snippet-expand
snippet-add dl "{ docker-compose logs -f presenceweb & docker-compose logs -f mysql; }"  
snippet-add dr "docker-compose down -v; docker-compose up -d"
snippet-add dfi "FLYWAY_OPERATION=info docker-compose up flyway"
snippet-add dfm "FLYWAY_OPERATION=migrate docker-compose up flyway"

fortune -s -n 300 | cowsay

antigen apply
