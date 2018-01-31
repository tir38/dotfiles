#!/usr/bin/env bash

# -------------------------------------------
# ---- root user dir
# -------------------------------------------
export DOT_FILES=~/development/dotfiles


# -------------------------------------------
# ---- general aliases —
# -------------------------------------------
alias ll="ls -al"


# -------------------------------------------
# ---- make 'ls' colorized —
# -------------------------------------------
export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"


# -------------------------------------------
# ---- git auto complete (https://gist.github.com/nolanlawson/8694399) —
# -------------------------------------------
source $DOT_FILES/git-completion/git-completion.bash
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
alias gcm='git commit -m'
alias gpull='git pull'
alias gpush='git push'
alias gprune='git remote prune origin'
alias gdump='git add . && git stash save && git stash drop && git status'
alias gmaster='git checkout master'
alias gdev='git checkout develop-5.2'
alias gfresh='git checkout master && git pull && git checkout develop && git pull && git checkout develop-5.2 && git pull && git remote prune origin'


# -------------------------------------------
# ---- add Gradle to path -------------
# -------------------------------------------
export PATH=$PATH:$GRADLE_HOME/bin


# -------------------------------------------
# ---- gradle aliases
# -------------------------------------------
alias ginstall='./gradlew installDebug'
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
# ---- Hierarchy Viewer Variable  ------------
# -------------------------------------------
export ANDROID_HVPROTO=ddm


# -------------------------------------------
# ---- add PID Cat (https://github.com/JakeWharton/pidcat) ——————
# -------------------------------------------
export PATH=$PATH:~/development/pidcat


# -------------------------------------------
# ---- mount/unmount AOSP dev disk image ----
# -------------------------------------------
# function mountAndroid { hdiutil attach /Users/jason/AOSP_contributions/aosp_dev_disk.dmg -mountpoint /Volumes/android; }
# function unmountAndroid() { hdiutil detach /Volumes/android; }

#export PATH=~/bin:$PATH
#function repoProjects(){
#	echo "all AOSP projects:"
#	repo forall -c 'echo "$REPO_PATH -- $REPO_PROJECT"'
#}

# -------------------------------------------
# ---- Add Gradle Tab Completion to source (https://gist.github.com/Ea87/46401a96df31cd208a87) ---------
# -------------------------------------------
source $DOT_FILES/gradle-tab-completion/gradle-tab-completion.bash
# may need to install md5sha1sum via: brew install  md5sha1sum


# -------------------------------------------
# ---- add z to path (https://github.com/rupa/z) —
# -------------------------------------------
source $DOT_FILES/z/z.sh


# -------------------------------------------
# ---- add RVM to path —	
# -------------------------------------------
source ~/.rvm/scripts/rvm


# -------------------------------------------
# ---- Add Android SDK tools and platform-tools to path —
# -------------------------------------------
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:~/Library/Android/sdk/tools


# -------------------------------------------
# ---- Go Aliases —	
# -------------------------------------------
alias gtest='gfmt && grc go test ./...'
alias gtestShort='gfmt && grc go test -short ./...'
alias gfmt='go fmt ./...'
alias glint='golint ./...'

