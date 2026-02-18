# export ZSH="$HOME/.oh-my-zsh"
export ANDROID_HOME="$HOME/Library/Android/sdk/"

# precmd is run after every single command bro
# This is to avoid sourcing every single tty after a change in zshrc
# https://superuser.com/questions/570000/source-new-bashrc-in-all-open-terminals
# zshrc_sourced=$(stat -f %m ~/.zshrc)
#precmd() {
#	test $(stat -f %m ~/.zshrc) -ne $zshrc_sourced && source ~/.zshrc
# }

#opt() {
#	man $1 | awk 'BEGIN{print "OPTIONS"} /^ +-/' | less
# }


# Utils
export LSCOLORS=cxdxdxBxfxDxexfxbxgxcx
alias ls="ls -G"
alias grep="grep --color=auto"
alias g="git"
alias vvi="/usr/bin/vim"
alias {v,vi,vim}="nvim"
alias hist="history | fzf"
alias co="code -n ."
alias op="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs code -n"
alias ov="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim" 
alias http="http -b"
alias oc=opencode
alias codex=codex -a never --sandbox workspace-write

export PGHOST=localhost
export PGUSER=postgres
export PGPASSWORD=password

# Node
alias ccat="/bin/cat"
alias scr="cat package.json | jq \".scripts\""
alias nr="npm run"

alias python="python3"
alias p=python
alias pm="python -m"

# Docker
alias dri="docker run --rm -it"
alias d="docker"
alias db="docker build"
alias dcmp="docker compose"
alias dcps="docker compose ps --format 'table {{.Name}}"

# Kubernetes
alias k="kubectl"
alias dcu="container-use" 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ovalb/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ovalb/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ovalb/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ovalb/google-cloud-sdk/completion.zsh.inc'; fi

export GOPATH="$HOME/go"

# Paths
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/opt/homebrew/Cellar/go/1.19.5/libexec:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export MODULAR_HOME="/Users/ovalb/.modular"
export PATH="/Users/ovalb/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export PATH="$HOME/Library/Application Support/Coursier/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(zoxide init zsh)"
eval "$(pyenv init --path)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/opt/homebrew/opt/icu4c@77/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c@77/sbin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Update prompt with git branch
setopt PROMPT_SUBST

parse_git_branch() {
  local b
  b=$(git symbolic-ref --quiet --short HEAD 2>/dev/null) || return
  echo " ($b)"
}

PS1="%n@%m %1~\$(parse_git_branch) %# "
