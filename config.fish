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

function cd
    if count $argv > /dev/null
        builtin cd "$argv"; and ls
    else
        builtin cd ~; and ls
    end
end

alias please="sudo"

# set vim to nvim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias cpp="~/compile_cpp"

# set python to python3
alias python="python3"

# fb messenger from terminal
alias fb="fb-messenger-cli"

alias intj="bash ~/idea-IU-172.3317.76/bin/idea.sh"

