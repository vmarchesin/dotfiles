# https://github.com/vmarchesin/dotfiles

# Global configs

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Environments

eval $(thefuck --alias fuck)

export NVM_DIR="/Users/vinicius.araujo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Aliases

alias zshrc="vim ~/.zshrc"
alias zprofile="vim ~/.zprofile"
alias ez="exec zsh"

alias g="git"
alias gc!="gc --amend --no-edit"
alias gpu="git push --set-upstream origin `git branch | grep '*' | sed 's/^..//'`"

alias sbks="cd ~/Documents/sbks"
alias vmarchesin="cd ~/Documents/vmarchesin"

# Functions
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
