# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/e05/e05/kavanase/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/e05/e05/kavanase/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/e05/e05/kavanase/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/e05/e05/kavanase/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
module load epcc-tools
bind 'set completion-ignore-case on'
#export PROMPT_COMMAND="echo -ne \"\033]0;Archer SupaComputa ($USER on the decks, spin that shit $HOSTNAME)\007\"" Read-only variable in Archer unfortunately
alias ls='ls --color'
export PATH=$PATH:~/.local/bin
alias checkscript="python2 ~/miniconda3/bin/checkScript"
alias work='cd /work/e05/e05/kavanase'
alias workdir='/work/e05/e05/kavanase'
alias q='qstat -u kavanase'
alias qa='qstat -a'
alias qt='q -T'
export LS_COLORS='*WAVECAR=93:*CHG*=93:*STOPCAR=31:*INCAR=33:*KPOINTS=33:*POTCAR=33:*job=33:*POSCAR=33:*gz=35'
alias mrv='find . -maxdepth 1 -name "vasp*out*" | xargs ls -t | head -1 | xargs less'
alias fv='find . -maxdepth 1 -name "vasp*out*" | xargs ls -t | head -1 | xargs tail -f'
alias lq='qstat -a | grep " low "'
alias wkndq='qstat | grep weekend'

# test if the prompt var is not set
if [ -z "$PS1" ]; then
    # prompt var is not set, so this is *not* an interactive shell
    return
fi

# If we reach this line of code, then the prompt var is set, so
# this is an interactive shell.
# Put all the commands here that should run only if this is an
# interactive shell.


export PS1="\[\e[32m\]Archer: \w > \[\e[0m\]"
work
q -H | tail -5
q
export PATH="${HOME}/Packages/vaspup2.0/bin:${PATH}"
. ~/Packages/z/z.sh
