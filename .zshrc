# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/.zsh

# all of our zsh files
typeset -U config_files
config_files=($ZSH/**/*.zsh)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable ch    ange.
export PATH="$PATH:$HOME/.rvm/bin"

fpath=(~/.zsh $fpath)
# fpath=(/usr/local/share/zsh-completions $fpath)

# source ~/.zsh/aliases.zsh
# source ~/.zsh/profile.zsh 

for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
 do
   source $file
 done

autoload -U compinit
compinit

source ~/.zsh/completion.zsh

unset config_files
