source "$HOME/Source/zsh-private/.zshrc"

# added by travis gem
[ -f /Users/paulboocock/.travis/travis.sh ] && source /Users/paulboocock/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paulboocock/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/paulboocock/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paulboocock/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/paulboocock/google-cloud-sdk/completion.zsh.inc'; fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/paulboocock/.sdkman"
[[ -s "/Users/paulboocock/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/paulboocock/.sdkman/bin/sdkman-init.sh"

source "$HOME/Source/zsh/.zshrc"
