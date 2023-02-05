export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="common"

HYPHEN_INSENSITIVE="true"

plugins=(
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias dwn="cd ~/Downloads"
alias p3="python3"
alias bzl="bazel"
alias gr="go run"
alias cr="cargo run"
alias nv="nvim"
alias n="nvim"
alias lg="lazygit"
alias k="kubectl"


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


mcd () {
  case "$1" in /*) :;; *) set -- "./$1";; esac
  mkdir -p "$1" && cd "$1"
}

tempy () {
    cp ~/algorithms/template.py $1.py
}


clear
