# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ---------------------------------------------------

# ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train"

# ---------------------------------------------------

plugins=(git 
         rand-quote
         command-not-found
         extract
         themes
         zsh-autosuggestions 
         zsh-syntax-highlighting
         zsh_reload
         safe-paste
         colored-man-pages
         sudo
         )

source $ZSH/oh-my-zsh.sh

# ---------------------------------------------------

alias ai='sudo apt install'

alias v='vim'

alias vimrc="source ~/.vimrc"
alias zshrc="source ~/.zshrc"

alias la='ls -a'
alias l='ll'

alias ta='tmux attach'

# ---------------------------------------------------

quote | cowsay