#======= aliases ==========
alias ll="ls -al"

#======= make 'ls' colorized ===========
export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"

#======= add platform-tools to PATH for ADB (and others) =========
export PATH=$HOME/development/sdk/platform-tools:$PATH

#======= add z to path (https://github.com/rupa/z) =========
. /Users/jason/development/z/z.sh