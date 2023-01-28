export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="miloshadzic"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# precmd is run after every single command bro
# This is to avoid sourcing every single tty after a change in zshrc
# https://superuser.com/questions/570000/source-new-bashrc-in-all-open-terminals
zshrc_sourced=$(stat -f %m ~/.zshrc)
precmd() {
	test $(stat -f %m ~/.zshrc) -ne $zshrc_sourced && source ~/.zshrc
}

opt() {
	man $1 | awk 'BEGIN{print "OPTIONS"} /^ +-/' | less
}

# Utils
export LSCOLORS=cxdxdxBxfxDxexfxbxgxcx
alias ls="ls -G"
alias grep="grep --color=auto"
alias g="git"
alias vvi="/usr/bin/vim"
alias {v,vi,vim}="nvim"
alias hist="history | fzf"

# Node
alias ccat="/bin/cat"
alias cat="bat"
alias scr="cat package.json | jq \".scripts\""
alias nr="npm run"


# Docker
alias dr="docker run --rm -it"
alias dk="docker"
alias db="docker build"
alias dcmp="docker compose"

alias python="python3"
