#!/usr/bin/env bash

# -------------------------------------------
# ---- root user dir
# -------------------------------------------
export DOT_FILES=~/dotfiles


# -------------------------------------------
# ---- general aliases —
# -------------------------------------------
alias ll="ls -al"

alias bbedit="open -a BBEdit "


# -------------------------------------------
# ---- make 'ls' colorized —
# -------------------------------------------
export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"


# -------------------------------------------
# ---- git auto complete (https://github.com/git/git/blob/master/contrib/completion/git-completion.bash) —
# -------------------------------------------
source $DOT_FILES/git-completion/git-completion.bash


# -------------------------------------------
# ---- git aliases
# -------------------------------------------
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
alias gcm='git commit -m'
alias gamend='git commit --amend'
alias gpull='git pull'
alias gpush='git push'
alias gprune='git remote prune origin'
alias gdump='git add . && git stash save && git stash drop && git status'
alias gmaster='git checkout master'
alias gdev='git checkout develop'
alias gfresh='git checkout master && git pull && git checkout develop && git pull && git remote prune origin'
alias magicStash='git stash save -u --keep-index'
alias gitKey='gpg --list-secret-keys --keyid-format LONG'
alias git_key='gpg --list-secret-keys --keyid-format LONG'
alias gitkey='gpg --list-secret-keys --keyid-format LONG'
alias gcheckout='git fetch && git checkout '

# -------------------------------------------
# ---- add Android Home and platform tools to path  -------------
# ----      needed for ADB  -------------
# -------------------------------------------

# TODO because of a bug with sdkmanager (as installed by Brew)
# it installs sdk components into a CaskRoom
# 		/usr/local/Caskroom/android-sdk/XXXX 
# you may need to update this

## Update: because I am now (temporarily) instaling command line tools manually. I can at least revert back to 
# the "correct" location for home/sdk root
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=~/Library/Android/sdk
# Lastly, we need to add cmdline-tools to path. This gets complicated. The cmdline-tools we add manually are in sdk/cmdline-tools/latest. But later those very same cmdline tools will use sdkmanager to re-download them into /sdk ... don't ask
export PATH=${PATH}:$ANDROID_HOME/cmdline-tools/latest/bin


# -------------------------------------------
# ---- add Gradle to path -------------
# -------------------------------------------
export GRADLE_HOME=~/.gradle
export PATH=$PATH:$GRADLE_HOME/bin


# -------------------------------------------
# ---- Gradle aliases -------------
# -------------------------------------------
alias clearGlobalGradleCache='rm -rf $GRADLE_HOME/caches/build-cache-*'


# -------------------------------------------
# ---- add dex-methods-count to path
# -------------------------------------------
# setup steps:
# git submodule init
# cd dex-method-counts
# ./gradlew assemble
#
# Read more at https://github.com/mihaip/dex-method-counts
# -------------------------------------------
export PATH=$PATH:$DOT_FILES/dex-method-counts/


# -------------------------------------------
# ---- show/hide hidden files in Finder with terminal alias -------------
# -------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


# -------------------------------------------
# ---- add z to path (https://github.com/rupa/z) —
# -------------------------------------------
source $DOT_FILES/z/z.sh


# -------------------------------------------
# ---- Go Aliases —	
# -------------------------------------------
alias gtest='gfmt && grc go test ./...'
alias gtestShort='gfmt && grc go test -short ./...'
alias gfmt='go fmt ./...'
alias glint='golint ./...'


# -------------------------------------------
# ---- Orion Specific -----------------------
# -------------------------------------------
alias ginstall='./gradlew app:installDebug && adb shell am start -n com.onbeep.obiwan.debug/com.onbeep.obiwan.venus.splash.SplashActivity'
alias gassemble='./gradlew app:assembleDebug'
alias gbundle='./gradlew app:bundleDebug'
alias gclean='./gradlew clean'


# -------------------------------------------
# ---- add my custom android scripts to path ——————
# -------------------------------------------
export PATH=$PATH:$DOT_FILES/gradle-android-scripts
export PATH=$PATH:~/personal/ADBX


# --------------
# ---- Add chruby to path and set default
# ----------
#source /usr/local/opt/chruby/share/chruby/chruby.sh
#source /usr/local/opt/chruby/share/chruby/auto.sh
#chruby ruby-2.7.1
