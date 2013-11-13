# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="daveverwer"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian command-not-found per-directory-history)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

alias l='ls -ltr --color=auto'
alias see='xdg-open'
alias rsyncrepo="rsync --filter=':- .gitignore' -aP"
alias u='run-vubuntu-fg'
alias uu='run-vubuntu-bg'
IFS='
'

export GDFONTPATH=/usr/lib64/python2.6/site-packages/matplotlib/mpl-data/fonts/ttf:$GDFONTPATH

export PATH=$HOME/.local/bin:$HOME/bin:/opt/qt485/bin:/opt/git18/bin:$PATH

# An explicit path for R
export LD_LIBRARY_PATH=$HOME/progs/R/lib64/R/lib
for p in $HOME/progs/*;
do
    export PATH=$p/bin:$PATH
    export LD_LIBRARY_PATH=$p/lib:$LD_LIBRARY_PATH
done

# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib64/pkgconfig
# for p in $(find $HOME/progs -name pkgconfig);
# do
#     export PKG_CONFIG_PATH=$p:$PKG_CONFIG_PATH
# done
#export PATH=$PATH:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/ibm/c4eb/bin:/home/sat/bin:/usr/kerberos/bin

# pass ctrl+s to the apps
stty -ixon


