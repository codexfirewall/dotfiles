# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

export PATH="$PATH:/usr/bin/python3"
export PATH="$PATH:/home/ssp-deb/.local/bin/Codux"
export PATH="$PATH:/home/ssp-deb/Device-Essentials"

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\n\[\e[38;5;46m\]\u\[\e[91m\]@\[\e[37m\]\h\[\e[0m\] \[\e[38;5;247m\]>\[\e[0m\] \[\e[37m\]\w\[\e[0m\] \[\e[93m\]${PS1_CMD1}\n\[\e[0m\]> '


# if bat dosent work after installation use this command
# mkdir -p ~/.local/bin
# ln -s /usr/bin/batcat ~/.local/bin/bat

# Set up fzf key bindings and fuzzy completion
#eval "$(fzf --bash)"

shopt -s autocd #automatically cd s into a dir without typing cd in the command

#export LS_COLORS="$(vivid generate iceberg-dark)"
export LS_COLORS="$(vivid generate catppuccin-mocha)"

# alias 

alias ls="eza -l --color=always --icons=always --no-time --no-user --no-permissions"
alias nf='nvim $(fzf -m --preview="bat --color=always {} ")'
alias f='fzf -m --preview="bat --color=always {} " '
alias lst='eza --tree --level=2 --icons=always --color=always '
alias cat='bat --color=always'
alias n="nvim"
alias x="exit"
alias cl="clear"
alias rl='source .bashrc'
alias update='sudo nala upgrade && flatpak upgrade'
alias install='sudo nala install'
alias remove='sudo nala remove'
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias calculator="flatpak run org.gnome.Calculator"

# path

export PATH="$PATH:/home/ssp-deb/dev_app/flutter/bin"



#neofetch
#figlet -c SSP
pfetch


#echo "
#        ███████╗███████╗██████╗       ██████╗ ███████╗██████╗ ██╗ █████╗ ███╗   ██╗
#        ██╔════╝██╔════╝██╔══██╗      ██╔══██╗██╔════╝██╔══██╗██║██╔══██╗████╗  ██║
#        ███████╗███████╗██████╔╝      ██║  ██║█████╗  ██████╔╝██║███████║██╔██╗ ██║
#        ╚════██║╚════██║██╔═══╝       ██║  ██║██╔══╝  ██╔══██╗██║██╔══██║██║╚██╗██║
#        ███████║███████║██║           ██████╔╝███████╗██████╔╝██║██║  ██║██║ ╚████║
#        ╚══════╝╚══════╝╚═╝           ╚═════╝ ╚══════╝╚═════╝ ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝"
echo " "


. "$HOME/.cargo/env"
. /usr/share/autojump/autojump.bash

export BAT_THEME="Catppuccin Mocha"

#eval "$(starship init bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:/home/ssp-deb/.spicetify
export CM_LAUNCHER="rofi"
