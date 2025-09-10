# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

. $HOME/bin/init.zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=30000
SAVEHIST=30000
ZSH_THEME="powerlevel10k/powerlevel10k"

bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/Redux/.zshrc'

autoload -Uz compinit
compinit

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# End of lines added by compinstall

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"
bindkey '^I' autosuggest-accept
bindkey "^[[C" forward-char   # Right arrow
bindkey "^[[D" backward-char  # Left arrow
bindkey "^[[A" up-line-or-history   # Up arrow
bindkey "^[[B" down-line-or-history # Down arrow

# Export commands
export PATH="$HOME/.local/bin:$PATH"
