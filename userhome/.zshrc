# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export
export EDITOR='nvim'

# alias
alias vim='nvim'
alias cowfsay='fortune | cowsay'
alias clcl='bash /home/LiHaoyuan/Scripts/clean_clipboard.sh'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/LiHaoyuan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Themes and Plugins
source /usr/share/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh_web_search/zsh-web-search.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
