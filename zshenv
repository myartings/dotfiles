# skip global compinit on ubuntu systems.
skip_global_compinit=true

# start tmux on every shell login
# if not running interactively, do not do anything
[[ $- != *i* ]] && return  
[[ -z "$TMUX" ]] && exec tmux

# dircolors
eval $(dircolors -b ~/.dir_colors)

# system-independent paths
PATH=$PATH:/home/serdotlinecho/dotfiles/scripts

