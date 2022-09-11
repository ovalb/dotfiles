#THIS FILE HAS TO BE HIDDEN IN THE HOME DIRECTORY
source /usr/local/Cellar/fzf/0.33.0/shell/completion.zsh

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
export RUBY_PATHS="$HOME/.gem/ruby/2.6.0/bin:$HOME/.rvm/bin"
export PROMPT_EOL_MARK=''

export LANG=en_US.UTF-8

export GOPATH="$HOME/go"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
# Created by `pipx` on 2022-02-11 15:54:10
export PATH="$PATH:/Users/onval/.local/bin"

export PATH="$PATH:/usr/local/Cellar/binutils/2.34/bin"
export PATH="$PATH:$DEV_HOME/flutter/bin:$DEV_HOME/google-cloud-sdk/bin"
export PATH="$PATH:$HOME/go/bin"

export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_AVD_HOME"
export PATH="$PATH:$WIRESHARK_HOME:$RUBY_PATHS"

export CLICOLORS=1

export PHP_MAMP_LOG="/Applications/MAMP/logs/php_error.log"

#Postgres
export POSTGRES_LOG="/usr/local/var/postgres/log/server.log"
export PGDATA="/usr/local/var/postgres"

# ls colors
export LSCOLORS=cxdxdxBxfxDxexfxbxgxcx
export LS_COLORS="di=34;40:ln=31;40:so=31;40:pi=31;40:ex=32;40:bd=36;40:cd=36;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Aliases
alias ls="ls -G"
alias dc="cd"
alias grep="grep --color=auto"
alias g="git"
alias g++="g++ -std=c++14"

alias dk="docker"
alias dcmp="docker compose"

alias hist="history | fzf"

alias python="/usr/local/bin/python3"
alias piplist="pipdeptree -l | grep '^[a-z]'"
alias pmon="python /usr/local/bin/portmon.py"

#alias git-cp='git add -A && git commit -m "$(git status | grep -E '(new|modified|deleted)')"' 

opt() {
	man $1 | awk 'BEGIN{print "OPTIONS"} /^ +-/' | less
}

# Disable Oh-my-zsh autoupdate
DISABLE_AUTO_UPDATE="true"
