# Aliases
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'

# Path updates
export PATH=~/bin:$PATH
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

[[ -s "/Users/paulboocock/.gvm/scripts/gvm" ]] && source "/Users/paulboocock/.gvm/scripts/gvm"
