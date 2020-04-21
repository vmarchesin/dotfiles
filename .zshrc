# Global configs

# Environments

export NVM_DIR="/Users/vinicius.araujo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Aliases

alias zshrc="vim ~/.zshrc"
alias zprofile="vim ~/.zprofile"
alias z="exec zsh"

alias sbks="cd ~/Documents/sbks"
alias vmarchesin="cd ~/Documents/vmarchesin"

# Functions
gitPushSetUpstream() {
  git push --set-upstream origin `git branch | grep '*' | sed 's/^..//'`
}
alias gpu="gitPushSetUpstream"

deleteAllBranchesAndReset() {
  local TIME=${$(date +"%T")//:/-}
  gbc $TIME
  gbD master
  gfa
  git checkout master
  git branch | grep -v master | xargs git branch -D $1
}
alias gbda="deleteAllBranchesAndReset"

# Configs

unsetopt correct
source ~/.zprofile