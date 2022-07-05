## Options
OVERRIDE_EXA="true" # Overrides ls commands with advanced exa
CUSTOM_PROMPT="true" # Overrides zsh theme with custom prompt

## Set preferences
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nano' # Default terminal editor
export LANG=en_US.UTF-8
HIST_STAMPS="mm/dd/yyyy"
HYPHEN_INSENSITIVE="true" # _ and - is same in path
ZSH_THEME="robbyrussell" # Theme is not used

## Setup auto update
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14 # every 2 weeks

## Plugin list
plugins=(git zsh-autosuggestions)

## Load Oh My ZSH
source $ZSH/oh-my-zsh.sh

## Replace listing using LS with EXA
if [ $OVERRIDE_EXA ]; then
    # Use colors, use icons, group dirs, iso-time, show git status
    alias ls="exa --color=always --icons --group-directories-first --time-style=iso --git"
    # Shorter hand
    alias l="ls"
    # List style with file sizes
    alias ll="ls -bl"
    # List hidden files
    alias la="ll -a"
    # Show tree, do not include git ignored folders or .git directory
    alias tree="la --tree --git-ignore --ignore-glob=.git"
fi

## Configuration Shortcuts
alias zshconf="nano ~/.zshrc"
alias dnfconf="sudo nano /etc/dnf/dnf.conf"
alias gpgconf="nano ~/.gnupg/gpg.conf"

## Directory traversal
alias desk="cd ~/Desktop"
alias windesk="cd /mnt/c/Users/$USER/Desktop" # Used on WSL systems
alias root="cd /"

## Command simplification
alias s="sudo"
alias sdnf="sudo dnf -y" # Red Hat
alias sapt="sudo apt -y" # Debian
alias spacman="sudo pacman --noconfirm" # Arch
alias sdocker="sudo docker"


##
## Zsh custom prompt script
##

if [ $CUSTOM_PROMPT ]; then
    ## Prompt segments
    function exitcode_prompt() { echo "%(?.%F{green}.%F{red})%?%f" }
    function user_prompt() { echo "%F{12}%Bλ%b %n@$(hostname)%f" }
    function time_prompt() { echo "%F{13}\uf017 %*%f" }
    function git_prompt() { echo "%F{9}\uf126 $(git_prompt_info)%f" }
    function directory_prompt() { echo "%F{green}\uf07c  %0~%f" }
    function newline_prompt() { echo -e "\n" }
    function elevation_prompt() {
        if [ "$EUID" -eq 0 ]; then
            echo "#" # Root
        else
            echo "$" # Other user
        fi
    }

    ## Timer functions
    function preexec() {
        command_timer_start=$(date +%s.%2N)
    }
    function precmd() {
        if [ $command_timer_start ]; then
            now=$(date +%s.%2N)
            delta_time=$(echo "scale=2; $now - $command_timer_start" | bc)
            if [ ${#delta_time} -eq 3 ]; then
                delta_time="0$delta_time"
            fi 
            export RPROMPT="%F{cyan}${delta_time}s%f [$(exitcode_prompt)]"
            unset command_timer_start
        fi
    }

    ## Git format
    ZSH_THEME_GIT_PROMPT_PREFIX="< "
    ZSH_THEME_GIT_PROMPT_SUFFIX=" >"
    ZSH_THEME_GIT_PROMPT_DIRTY=":%F{1}\uf057%F{9}"
    ZSH_THEME_GIT_PROMPT_CLEAN=":%F{2}\uf058%F{9}"

    ## Prompt
    PROMPT='[ $(user_prompt) | $(directory_prompt) | $(git_prompt) | $(time_prompt) ]
$(elevation_prompt) '
fi
