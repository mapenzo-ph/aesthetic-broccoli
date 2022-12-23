# enable plugin manager
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# history file
HISTFILE=~/.zsh_history

# aliases and exports
plug "$HOME/.config/zsh/aliases.zsh"
# plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# init fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
