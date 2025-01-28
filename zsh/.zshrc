setopt IGNOREEOF

autoload -Uz colors
colors

autoload -Uz compinit
compinit

setopt share_history
setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Allow cd with only path name, also add ~/dev in default search
setopt auto_cd
cdpath=(~/dev)

# Disables Ctrl+s lock and Ctrl+q unlock
setopt no_flow_control

# Aliases
alias cp='cp -i'
alias ls='eza --icons'
alias ll='ls -l'
alias la='ls -la'
alias lf='ls -lf'
alias ld='ls -lD'
alias tree='eza --tree'
alias vim='nvim'
alias cat='bat'


#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Themes
eval "$(oh-my-posh init zsh --config $HOME/dotfiles/ohmyposh/config.toml)"
