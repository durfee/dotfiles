hub_path=${which hub}
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# I am the embodiment of laziness

alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m "