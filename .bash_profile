# ——————
# — root user dir
# ——————
export USER_DIR=/Users/jasonatwood/development/dotfiles


# ———
# — general aliases —
# ———
alias ll="ls -al"


# ———
# — make 'ls' colorized —
# ———
export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"


# --------------------------
# ---- git auto complete (https://gist.github.com/nolanlawson/8694399) —
# --------------------------
source $USER_DIR/git-completion/git-completion.bash
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
alias gpull='git pull'
alias gpush='git push'
alias gprune='git remote prune origin'
alias gdump='git add . && git stash save && git stash drop && git status'
alias gmaster='git checkout master'
alias gfresh='git checkout master && git pull && git remote prune origin'


# -------------------------------------
# ---- add Gradle to path -------------
# -------------------------------------
export PATH=$PATH:$GRADLE_HOME/bin


# -----------------------------------------------------------------------------------------
# ---- add dex-methods-count to path (https://github.com/mihaip/dex-method-counts) --------
# -----------------------------------------------------------------------------------------
export PATH=$PATH:$USER_DIR/development/dex-method-counts


# -----------------------------------------------------------------------
# ---- show/hide hidden files in Finder with terminal alias -------------
# -----------------------------------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'


# -----------------------------------------------
# ------- Hierarchy Viewer Variable  ------------
# -----------------------------------------------
export ANDROID_HVPROTO=ddm


# -----------------------------------------------
# ------- add PID Cat (https://github.com/JakeWharton/pidcat) ——————
# -----------------------------------------------
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

# ------------------------------------------------------------------------------------------------
# ---- Add Gradle Tab Completion to source (https://gist.github.com/nolanlawson/8694399) ---------
# ------------------------------------------------------------------------------------------------
source $USER_DIR/gradle-tab-completion/gradle-tab-completion.bash


# -------------------------------------------
# — add z to path (https://github.com/rupa/z) —
# -------------------------------------------
source $USER_DIR/z/z.sh