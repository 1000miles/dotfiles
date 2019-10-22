# PERSONAL SETTINGS

# Encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='vim'

## Colors for Shell
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-256color

## Oh-My-ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="junkfood"
plugins=(git dotenv rake osx vim curl wget rails ruby rvm xcode vagrant tmux zsh-completions nvm node)
source $ZSH/oh-my-zsh.sh
autoload -Uz compinit && compinit -i
fpath=(~/.zsh/completion $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh/site-functions/_aws

## Paths
export PATH="$PATH:/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:/usr/local/MacGPG2/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
export GOPATH="/usr/local/go/bin"
export RSYNC="/usr/local/bin/rsync"
export YUBICOPIV="/usr/local/bin/yubico-piv-tool"
export GPG_TTY=$(tty)
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Aliases
alias be='bundle exec'
alias ll='ls -lha'
alias dc='docker-compose'
alias szsh='source $HOME/.zshrc'
alias sssh='source $HOME/.ssh'
alias gst='git status'
alias glog='git log'
alias gpushom='git push origin master'

## GIT variables
export GIT_AUTHOR_EMAIL=gitnap@mailbox.org
export GIT_AUTHOR_NAME='Thuy Le'
export GIT_COMMITTER_EMAIL=gitnap@mailbox.org
export GIT_COMMITTER_NAME='Thuy Le'
export GIT_EDITOR=/usr/bin/vim

## Keys
export SSH_KEYS="~/.ssh/hackbertie_id_rsa"

## Scripts

# Customized editor for local and remote sessions
  if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
  else
    export EDITOR='mvim'
  fi

# ===== PACKAGE MANAGERS ==== #

# NVM (via Git install)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
