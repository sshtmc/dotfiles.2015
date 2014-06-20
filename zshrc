# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="daveverwer"
#ZSH_THEME="cypher-nostatus"
ZSH_THEME="powerline"

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
plugins=(git debian command-not-found)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=vim

# enable X ACL for localhost to connect to for GUI applications to work
xhost +local: >/dev/null

alias l='ls -ltr --color=auto'
alias see='xdg-open'
alias rsyncrepo="rsync --filter=':- .gitignore' -aP"
alias t='$HOME/progs/todo.txt_cli-2.9-bin/todo.sh'
IFS='
'
alias svn-cdiff='svn diff -x -p "$*" | colordiff | less'
alias svn-head-diff='svn diff -r`(svn info | grep Revision | cut -d" " -f2)`:HEAD | colordiff'
alias svn-head-summary='svn diff -r`(svn info | grep Revision | cut -d" " -f2)`:HEAD --summarize'

export GDFONTPATH=/usr/lib64/python2.6/site-packages/matplotlib/mpl-data/fonts/ttf:$GDFONTPATH
export PATH=$HOME/.local/bin:$HOME/bin:/opt/qt53/5.3/gcc_64/bin:/opt/git18/bin:$PATH
export PATH=$HOME/projects/flashcard-scripts:$PATH

# Linaro
export PATH=/opt/gcc-linaro-arm-linux-gnueabihf-4.7-2013.01-20130125_linux/bin:$PATH

source $HOME/.profile

# pass ctrl+s to the apps
stty -ixon

function vim {
    export LD_LIBRARY_PATH=$HOME/progs/python2.7/lib
    export PATH=$HOME/progs/vim7/bin:$HOME/progs/python2.7/bin:$PATH
    vim_path="$(which vim)"
    if ! test -z "$DISPLAY" && $($vim_path --version | grep "+dialog_con_gui" -q >/dev/null)
    then
       vim_args=("-g" "-geometry" "1024x768")
    fi
    if test $ARGC -le 3; then
       # vsplit files
       vim_args=($vim_args "-O")
    else
       vim_args=($vim_args "-p")
    fi
    ${vim_path} ${vim_args} "$@"
}

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
source ~/.fzf.zsh
