# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=30000
SAVEHIST=30000

# Use Emacs keybindings
bindkey -e

# Load zsh completion system
autoload -Uz compinit
compinit

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship prompt initialization
eval "$(starship init zsh)"

# zoxide for smarter cd
eval "$(zoxide init --cmd cd zsh)"

# Keybindings for autosuggestions and arrow keys
bindkey '^I' autosuggest-accept
bindkey "^[[C" forward-char      # Right arrow
bindkey "^[[D" backward-char     # Left arrow
bindkey "^[[A" up-line-or-history   # Up arrow
bindkey "^[[B" down-line-or-history # Down arrow

# Export user local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

