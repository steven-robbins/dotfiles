# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# bun completions
source "/Users/sstero/.bun/_bun"

# fzf
source <(fzf --zsh)

# nvm (lazy load)
nvm() {
        export NVM_DIR="$HOME/.nvm"
        source "$NVM_DIR/nvm.sh" # Will replace nvm()

        if [[ -n "$@" ]]; then
                nvm $@
        fi
}
source "$HOME/.nvm/bash_completion"

# Starship prompt
eval "$(starship init zsh)"

# Path
PATH=$HOME/.bun/bin:$PATH
PATH=$HOME/.local/bin:$PATH
PATH=/opt/podman/bin:$PATH
export PATH

# Editor
export EDITOR=vim
export VISUAL=vim
set -o vi

# Aliases
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit -v'
alias gcam='git commit -am'
alias gcl='git clone'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias pcr='pre-commit run --all-files'
