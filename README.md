## Fonts
Preview here https://www.programmingfonts.org/#hasklig

Download here https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip

todo: Mac os fontbook only needs a subset of the inlcuded fonts. enumerate

## Installing configurations 

* clone this repo to ~
* cd ~/dotfiles
* use `stow` to install desired configs. Stow symlinks the file trees in each package to their relative locations in `..` For example `stow tmux` will create a link `~/.config/tmux/tmux.conf` targetting `~/dotfiles/tmux/.config/tmux/tmux.conf`
