# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alFt'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

########CUSTOMIZE#####################
#move to start of command line by Ctrl a
set -o emacs

#Alias
alias vi='nvim'
alias vim='nvim'
alias mkdri='mkdir'
alias mdkri='mkdir'
alias ls='ls -ta'
alias tmux='tmux -u'
alias dup='cd ../'
#Windows
alias Documents='cd /mnt/c/Users/infoh/Documents'
alias winhome='cd /mnt/c/Users/infoh'
alias mydocker='cd /mnt/c/Users/infoh/Documents/Program/Docker/' 
alias myscript='cd /home/infoh/shellscripts/'
alias mypython='cd /home/infoh/mypython'
alias myjs='cd /mnt/h/マイドライブ/G_Webdev/G_JS/Stepup_JS'
#Ubuntu
alias home='cd /home/infoh'
#Gdrive alias
alias gdrive='cd /mnt/h/マイドライブ/'
alias book='cd /mnt/h/マイドライブ/G_Books/'
alias readj='less /mnt/h/マイドライブ/G_Private/journal.md'
alias cdj='vi /mnt/h/マイドライブ/G_Private/journal.txt'
alias cdjmd='vi /mnt/h/マイドライブ/G_Private/journal.md'
alias freenote='vi /mnt/h/マイドライブ/G_Private/freenote.md' 
alias todolist='vi /mnt/h/マイドライブ/G_Private/todolist.md'
alias portfolio='cd /mnt/h/マイドライブ/G_Reqruit/Portfolio2023'
alias artthought='vi /mnt/h/マイドライブ/G_Private/Works/art_thought.md'
alias mental='vi /mnt/h/マイドライブ/G_Private/Mental.md'
alias current='vi /mnt/h/マイドライブ/G_Webdev/G_WebDesign/G_XD/Documents/moshasyugyo/coding-from-xd'
alias timee='vi /mnt/h/マイドライブ/G_Life/G_Finance/timee.csv'

export PS1="\[\e[1;36m\]\u\[\e[m\]\[\e[1;34m\]@\h\[\e[m\]\[\e[1;35m\]:\w\[\e[m\]\$ "

##mout gdrive in terminal on oldPC
#if [ $HOSTNAME = "DESKTOP-98DKBEG" ]; then
#	sudo mount -t drvfs H: /mnt/h
#	alias gdrive='cd /mnt/h/マイドライブ/'
#fi

#color_221115
export LS_OPTIONS='-a --color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

#myscript 
PATH=/home/infoh/shellscripts:${PATH}
export PATH
alias w3mmd="w3mmd.sh"
alias jrnl="journal.sh"
alias today="today.sh"
alias pomo="countdown_pomodoro.sh"
alias mw='mw.sh'
alias thesaurus='thesaurus.sh'

#myscript in .functions
if [ -f "$HOME/.functions" ]; then
    source "$HOME/.functions"
fi

export HISTTIMEFORMAT="%F %T "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# SSHエージェントを自動起動 20241117
if [ -z "$SSH_AUTH_SOCK" ]; then
    # エージェントを起動
    eval "$(ssh-agent -s)"
    # エージェントにキーを追加する（パスフレーズが不要になる。）
    ssh-add ~/.ssh/id_ed25519
fi

