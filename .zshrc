# Aliases
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'

# Path updates
export PATH=~/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"

SOURCE=${(%):-%N}
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DOTFILES_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source "$DOTFILES_DIR/.zinit"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
alias go="go1.19.7"