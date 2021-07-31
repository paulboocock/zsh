# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paulboocock/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/paulboocock/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paulboocock/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/paulboocock/google-cloud-sdk/completion.zsh.inc'; fi

# Aliases
alias tf=terraform
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'

# default java version
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)
export JAVA_HOME=$(/usr/libexec/java_home -v 11.0.5)

# Path updates
export PATH=~/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=~/go/bin:$PATH

SOURCE=${(%):-%N}
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DOTFILES_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source "$DOTFILES_DIR/.zinit"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/paulboocock/.sdkman"
[[ -s "/Users/paulboocock/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/paulboocock/.sdkman/bin/sdkman-init.sh"
