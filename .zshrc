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
export PATH=~/bin/apache-maven-3.6.3/bin:$PATH
export PATH=/Users/paulboocock/.local/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH=~/bin/flutter/bin:$PATH

source "$HOME/Source/zsh/.zinit"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/paulboocock/.sdkman"
[[ -s "/Users/paulboocock/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/paulboocock/.sdkman/bin/sdkman-init.sh"
