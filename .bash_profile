#!/usr/bin/env bash

# -------------------------------------------
# ---- root user dir
# -------------------------------------------
export DOT_FILES=~/dotfiles


# ---- add private dot_files to path ——————
# -------------------------------------------
DOT_FILES_PRIVATE=~/dotfiles_private
export PATH=$PATH:$DOT_FILES_PRIVATE


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
#USE gs script instead: alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
alias gadd='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gamend='git commit --amend'
alias gpull='git pull'
alias gpush='git push'
alias gprune='git remote prune origin'
alias gdump='git add . && git stash save && git stash drop && git status'
alias gmaster='git checkout green-master'
alias gfresh='git checkout green-master && git pull && git remote prune origin'
alias magicStash='git stash save -u --keep-index'
alias gitKey='gpg --list-secret-keys --keyid-format LONG'
alias git_key='gpg --list-secret-keys --keyid-format LONG'
alias gitkey='gpg --list-secret-keys --keyid-format LONG'
alias gcheckout='git fetch && git checkout '


# -------------------------------------------
# ---- add Android Home, command line tools, platform tools, and emulator to path  -------------
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

# For now we are manually installing SDK tools (see android_machine_setup/.setup_android_tools
# ANDROID_HOME is deprecated, keep for now
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"

# -------------------------------------------
# ---- add Gradle to path -------------
# -------------------------------------------
export GRADLE_HOME=~/.gradle
export PATH=$PATH:$GRADLE_HOME/bin


# -------------------------------------------
# ---- Gradle aliases -------------
# -------------------------------------------
alias gNukeBuildCache='rm -rf $GRADLE_HOME/caches/build-cache-*'
alias gNukeConfigurationCache='rm -rf .gradle/configuration-cache/'
alias gclean='./gradlew clean'



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
# ---- Square Specific -----------------------
# -------------------------------------------
alias retail_build='./gradlew --configuration-cache --configuration-cache-problems=warn :squid:x2-retail:x2-retail-pos-app:assembleDebug'
alias retail_install='./gradlew --configuration-cache --configuration-cache-problems=warn :squid:x2-retail:x2-retail-pos-app:installDebug'
alias retail_install_no_cc='./gradlew :squid:x2-retail:x2-retail-pos-app:installDebug'
alias retail_start='adb shell am start -n com.squareup.retail/com.squareup.ui.PaymentActivity'
alias retail_unit_tests='./gradlew -p retail testDebug && ./gradlew -p squid/x2-retail testDebug'
alias retail_install_and_start='retail_install && retail_start'
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
