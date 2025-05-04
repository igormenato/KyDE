set fish_greeting ""

set -gx TERM xterm-256color

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

# path
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# nodejs
set -gx PATH node_modules/.bin $PATH

# golang
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# mise-en-place
eval "$(mise activate fish)"