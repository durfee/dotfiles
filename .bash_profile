source ~/.git_completion.bash
source ~/.git-prompt.sh
source ~/.bashrc
source ~/.local-secrets


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#####################
# Paths
#####################

# Set Python path
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Set ruby path
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Set Cargo path
export PATH="$HOME/.cargo/bin:$PATH"

#####################
# Editor
#####################

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

######################
# Aliases
######################

alias e=touch
alias es=atom
alias ec=code
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias -- -="cd -"
alias ni="npm install"
alias nid="npm install --save-dev"
alias nig="npm install -g"
alias nt="npm test"
alias nit="npm install && npm test"
alias nr="npm run"
alias ns="npm start"
alias nff="npm cache clean --force && rm -rf node_modules && npm install"
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m "
alias ya="yarn add"
alias yad="yarn add --dev"
alias yi="yarn init"
alias yy="yarn"
alias ys="yarn start"
alias yt="yarn test"
alias yit="yarn && yarn test"
alias yr="yarn run"
alias python="python3"
alias pip="pip3"
alias ls="gls -F --color"
alias l="gls -lAh --color"
alias ll="gls -l --color"
alias la='gls -A --color'

#######################
# Scripts
#######################

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

