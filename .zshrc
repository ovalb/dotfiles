#THIS FILE HAS TO BE HIDDEN IN THE HOME DIRECTORY
source /usr/local/Cellar/fzf/0.33.0/shell/completion.zsh

# Sourcing the zsh-vi-mode, installed with brew
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="miloshadzic"

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_AVD_HOME="$HOME/.android/avd"

export DEV_HOME="$HOME/development"
export WIRESHARK_HOME="/Applications/Wireshark.app/Contents/MacOS"
# export RUBY_PATHS="$HOME/.gem/ruby/2.6.0/bin:$HOME/.rvm/bin"
export PROMPT_EOL_MARK=''

export LANG=en_US.UTF-8

export GOPATH="$HOME/go"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$HOME/.local/bin"
export PATH="$PATH:/usr/local/Cellar/binutils/2.38.1/bin"
export PATH="$PATH:$DEV_HOME/flutter/bin:$DEV_HOME/google-cloud-sdk/bin"
export PATH="$PATH:$HOME/go/bin"

export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$ANDROID_AVD_HOME"
export PATH="$PATH:$WIRESHARK_HOME"
export PATH="/usr/local/opt/ruby/bin:$PATH"
#export PATH="$PATH:$HOME/.rvm/gems/ruby-3.0.0/bin"

export CLICOLORS=1

export PHP_MAMP_LOG="/Applications/MAMP/logs/php_error.log"

#Postgres
export POSTGRES_LOG="/usr/local/var/postgres/log/server.log"
export PGDATA="/usr/local/var/postgres"

# ls colors
export LSCOLORS=cxdxdxBxfxDxexfxbxgxcx
export LS_COLORS="di=34;40:ln=31;40:so=31;40:pi=31;40:ex=32;40:bd=36;40:cd=36;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Functions
opt() {
	man $1 | awk 'BEGIN{print "OPTIONS"} /^ +-/' | less
}

# precmd is run after every single command bro
# This is to avoid sourcing every single tty after a change in zshrc
# https://superuser.com/questions/570000/source-new-bashrc-in-all-open-terminals
zshrc_sourced=$(stat -f %m ~/.zshrc)
precmd() {
	test $(stat -f %m ~/.zshrc) -ne $zshrc_sourced && source ~/.zshrc }

# Disable Oh-my-zsh autoupdate
DISABLE_AUTO_UPDATE="true"

# Aliases
alias ls="ls -G"
alias dc="cd"
alias grep="grep --color=auto"
alias g="git"
alias g++="g++ -std=c++14"

alias dk="docker"
alias dcmp="docker compose"

alias hist="history | fzf"

alias catp="bat package.json"
alias scr="cat package.json | jq \".scripts\""

alias nr="npm run"
alias {v,vi,vim}=nvim

# Docker!
alias dr="docker run --rm -it"
alias db="docker build"

alias python="/usr/local/bin/python3"
alias piplist="pipdeptree -l | grep '^[a-z]'"

#TODO: actually find a proper way to deploy this
alias pmon="python /usr/local/bin/portmon.py"

#alias git-cp='git add -A && git commit -m "$(git status | grep -E '(new|modified|deleted)')"' 

alias config='/usr/local/bin/git --git-dir=/Users/onval/.dots --work-tree=/Users/onval'
