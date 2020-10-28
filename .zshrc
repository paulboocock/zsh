### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# Completion Options.
setopt complete_in_word         # Complete From Both Ends Of A Word.
setopt always_to_end            # Move Cursor To The End Of A Completed Word.
setopt path_dirs                # Perform Path Search Even On Command Names With Slashes.
setopt auto_menu                # Show Completion Menu On A Successive Tab Press.
setopt auto_list                # Automatically List Choices On Ambiguous Completion.
setopt auto_param_slash         # If Completed Parameter Is A Directory, Add A Trailing Slash.
setopt no_complete_aliases
setopt promptsubst

PS1=""

zinit wait lucid for \
        OMZL::git.zsh \
    atload"unalias grv" \
        OMZP::git

zinit ice pick"async.zsh" src"dracula.zsh-theme"
zinit wait'!' lucid for \
    OMZL::prompt_info_functions.zsh \
    dracula/zsh

zinit wait lucid light-mode for \
        OMZ::lib/compfix.zsh \
        OMZ::lib/completion.zsh \
        OMZ::lib/functions.zsh \
        OMZ::lib/diagnostics.zsh \
        OMZ::lib/git.zsh \
        OMZ::lib/grep.zsh \
        OMZ::lib/key-bindings.zsh \
        OMZ::lib/misc.zsh \
        OMZ::lib/spectrum.zsh \
        OMZ::lib/termsupport.zsh \
        OMZ::lib/nvm.zsh \
        OMZ::lib/directories.zsh \
    atinit"zicompinit; zicdreplay" \
        zdharma/fast-syntax-highlighting \
        OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh \
        OMZ::plugins/command-not-found/command-not-found.plugin.zsh \
    atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
        OMZ::plugins/git-auto-fetch/git-auto-fetch.plugin.zsh \
    as"completion" \
        OMZ::plugins/docker/_docker \
        OMZ::plugins/thefuck/thefuck.plugin.zsh \
        OMZ::plugins/vscode/vscode.plugin.zsh \
        OMZ::plugins/brew/brew.plugin.zsh \
        OMZ::plugins/terraform/terraform.plugin.zsh \
    atload'pyenv global 3.8.2' \
    atload'CERT_PATH=$(python -m certifi)' \
    atload'export SSL_CERT_FILE=${CERT_PATH}' \
    atload'export REQUESTS_CA_BUNDLE=${CERT_PATH}' \
        OMZ::plugins/pyenv/pyenv.plugin.zsh \
    atload'chruby ruby-2.6.5' \
        OMZ::plugins/chruby/chruby.plugin.zsh \
    atload'nvm use 12 --lts --silent' \
        OMZ::plugins/nvm/nvm.plugin.zsh 

# Recommended Be Loaded Last.
zinit ice wait blockf lucid atpull'zinit creinstall -q .'
zinit load zsh-users/zsh-completions
