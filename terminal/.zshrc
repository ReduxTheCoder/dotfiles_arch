# ------------------------
# Starship prompt
# ------------------------
eval "$(starship init zsh)"

# ------------------------
# Oh My Zsh
# ------------------------
export PATH="$HOME/.cargo/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ------------------------
# Tab Completion
# ------------------------
autoload -Uz compinit
compinit

# Use fzf for tab completion
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# ------------------------
# History Options
# ------------------------
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
HISTSIZE=10000
SAVEHIST=10000
setopt CORRECT

# Optional: menu selection for completion
# zstyle ':completion:*' menu select

# ------------------------
# zoxide (directory jumping)
# ------------------------
eval "$(zoxide init --cmd cd zsh)"

# ------------------------
# Other
# -----------------------
export QT_QPA_PLATFORMTHEME=qt6ct
. ~/stuff/bin/boot.sh
