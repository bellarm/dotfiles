# fish config by bella

# path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# load Oh My Fish configuration.
source $OMF_PATH/init.fish

# start tmux whenever opening the terminal
function fish_greeting
    test $TERM != "screen"; and exec tmux -2
end

function bored
    fortune | cowsay -f tux | lolcat
end

# set vim to nvim
alias vim="nvim"
alias v="nvim"

# compile script for 17s2 (because I'm lazy)
alias cpp="~/compile_cpp"

# set python to python3
alias python="python3"

# fb messenger from terminal
alias fb="fb-messenger-cli"

# ssh to cse
alias cse="ssh z5083765@cse.unsw.edu.au"

