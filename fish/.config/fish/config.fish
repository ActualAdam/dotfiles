if status is-interactive
    # Commands to run in interactive sessions can go here

    if test -z $TMUX
        set -gx TERM xterm-256color
    end

    set -gx COLORTERM truecolor
    nvm use lts/gallium
end


starship init fish | source
set -x SHELL /bin/bash
