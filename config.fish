# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Start tmux whenever opening the terminal
function fish_greeting
    test $TERM != "screen"; and exec tmux
end

# Set vim to nvim
alias vim="nvim"

# Compile script for cpp (beacuse I'm lazy)
alias cpp="~/compile"

