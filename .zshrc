# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paulboocock/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/paulboocock/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paulboocock/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/paulboocock/google-cloud-sdk/completion.zsh.inc'; fi

# Aliases
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'

# Path updates
export PATH=~/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/flutter/bin:$PATH
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

[[ -s "/Users/paulboocock/.gvm/scripts/gvm" ]] && source "/Users/paulboocock/.gvm/scripts/gvm"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/paulboocock/.sdkman"
[[ -s "/Users/paulboocock/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/paulboocock/.sdkman/bin/sdkman-init.sh"
