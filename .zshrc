# Initialize autocompletion
autoload -U compinit; compinit

# Set up history
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt NO_BEEP

# Autocompletion using arrow keys (based on history)
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Enable git prompt
source ~/.zsh/plugins/git/git-prompt.sh

# Git prompt options
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM='verbose'
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_COMPRESSSPARSESTATE=true

# Enable command-subsitution in PS1
setopt PROMPT_SUBST
NL=$'\n'
PS1='$NL%B%F{cyan}%0~%f%b% %F{magenta}$(__git_ps1 "  %s")%f$NL%B%(?.%F{green}.%F{red})%(!.#.$)%f%b '

# fzf export
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
--color=fg:#e5e9f0,hl:#81a1c1
--color=fg+:#e5e9f0,bg+:#2e3440,hl+:#81a1c1,gutter:-1
--color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
--color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b"

# source .profile
source $HOME/.profile

# Cargo
. "$HOME/.cargo/env"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Set XDG_DATA_HOME
export XDG_DATA_HOME="$HOME/.local/share/"

# Alias
alias v=vim
alias vo="vim ."
alias lg=lazygit
