alias ta="terraform apply -lock=false -auto-approve"
alias td="terraform destroy -lock=false -auto-approve"
alias tf="terraform"
alias stfb="stringer build --tags terraform"
alias stf="stringer terraform"
alias dc-bounce="docker-compose down -v; docker-compose up -d"
alias dk9='docker kill $(docker ps -q)'

# switch between light and dark themes
alias ol="tmux source-file ~/.config/tmux/theme/light.tmux.conf; tmux set-environment -g background 'light'; killall -SIGUSR1 nvim"
alias od="tmux source-file ~/.config/tmux/theme/dark.tmux.conf; tmux set-environment -g background 'dark'; killall -SIGUSR1 nvim"
