#======= aliases ==========
alias ll="ls -al"


#======= make 'ls' colorized ===========
export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"


#======= add platform-tools to PATH for ADB (and others) =========
export PATH=$HOME/development/sdk/platform-tools:$PATH


#======= add maven-antsy-color script to path =========
[[ -s "/Users/jason/scripts/mvn" ]] && source "/Users/jason/scripts/mvn"


#======= add z to path (https://github.com/rupa/z) =========
. /Users/jason/development/z/z.sh


# added by travis gem
[ -f /Users/jason/.travis/travis.sh ] && source /Users/jason/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/jason/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
