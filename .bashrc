# ~/.bashrc — personal shell config

export EDITOR=vim
export PATH="$HOME/bin:$PATH"

# ─── Aliases ───
alias gp="git push"
alias gco="git checkout"
alias ...="cd ../.."
alias cls="clear"

# ─── Prompt ───
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \W\$(parse_git_branch)\$ "

# ─── History ───
HISTSIZE=5000
SAVEHIST=5000
setopt SHARE_HISTORY 2>/dev/null || true
