if status is-interactive
    # Commands to run in interactive sessions can go here
    nvm use lts/gallium
end

starship init fish | source
set -x SHELL /bin/bash
