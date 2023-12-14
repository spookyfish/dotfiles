# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
alias ls='exa'
alias ll='ls -l'
alias la='ls -la'
alias tree='exa -tree'
alias vim='nvim'
alias cat='bat'


# plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Themes
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/linuxbrew/.linuxbrew/share/powerlevel10k/powerlevel10k.zsh-theme
