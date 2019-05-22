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

# -------------------------------------------
# ---- add Gradle to path -------------
# -------------------------------------------
export PATH=$PATH:$GRADLE_HOME/bin


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
# ---- Add Android SDK, tools, platform-tools, ARM NDK tools to path —
# -------------------------------------------
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:~/Library/Android/sdk/tools
export PATH=$PATH:~/Library/Android/sdk/ndk-bundle/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin


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
alias ginstall='./gradlew app:installDebug'
alias gassemble='./gradlew app:assembleDebug'
alias gclean='./gradlew clean'
alias reinstall='adb install -r ~/orion/obdroid/app/build/outputs/apk/debug/app-debug.apk'
alias rappInstall='./gradlew rosetta:installDebug'
alias rappAssemble='./gradlew rosetta:assembleDebug'
export PATH=$PATH:$DOT_FILES/orion
export PATH=$PATH:~/orion/rosetta-adb-scripts


# -------------------------------------------
# ---- add my custom android scripts to path ——————
# -------------------------------------------
export PATH=$PATH:$DOT_FILES/gradle-android-scripts