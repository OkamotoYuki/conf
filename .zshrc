# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/yukuncy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ls
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"

# shortcuts
alias d="cd ~/d"
alias v="cd ~/d/v"

# cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# history
setopt hist_ignore_all_dups

# prompt
autoload colors
colors

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit
compinit -u

source /usr/local/etc/bash_completion.d/git-prompt.sh

setopt prompt_subst
setopt transient_rprompt

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
PROMPT='[%F{yellow}%n%f@%F{yellow}%m%f]$ '
PROMPT2='[%F{yellow}%n%f@%F{yellow}%m%f]> '
RPROMPT='%F{green}%~%f%F{red}$(__git_ps1)%f'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
