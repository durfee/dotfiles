# Yarn because it's cool.

if (( $+commands[yarn] ))
then
  export PATH="$PATH:`yarn global bin`"
fi