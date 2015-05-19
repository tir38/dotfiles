# --------------------------
# ---- add maven to path ---
# --------------------------
export M2_HOME=/Users/jason/development/apache-maven/apache-maven-3.2.1  
export M2=$M2_HOME/bin  
export PATH=$M2:$PATH
export ANDROID_HOME=/Users/jason/development/sdk
export PATH=$ANDROID_HOME:$PATH

## bash complicates this in that .bashrc is only read by a shell that's BOTH interactive and non-login, 
# so you'll find most people end up telling their .bash_profile to also read .bashrc with something like:
source ~/.bashrc  # get paths and aliases

# --------------------------
# ---- git auto complete ---
# --------------------------
source ~/development/git_extras/git-completion.bash
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'
alias gpull='git pull'
alias gpush='git push'
alias gprune='git remote prune origin'
alias gdump='git add . && git stash save && git stash drop && git status'

# --------------------------
# ---- add Java to path ----
# --------------------------
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:$PATH

# -------------------------------------
# ---- Android tools and build-tools to path ----
# -------------------------------------
export PATH=$PATH:~/development/sdk/build-tools/21.1.2
export PATH=$PATH:~/development/sdk/tools

# -------------------------------------
# ---- add Gradle to path -------------
# -------------------------------------
export PATH=$PATH:$GRADLE_HOME/bin


# -----------------------------------------------------------------------
# ---- show/hide hidden files in Finder with terminal alias -------------
# -----------------------------------------------------------------------
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
