# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
#module load gcc
source /shared/ucl/apps/bin/defmods
module load python3
# echo "What's up pal, are ya alright?"
export python="python3.7"
export PATH=~/miniconda3/bin:$PATH:$HOME/.local/bin:$HOME/bin
bind 'set completion-ignore-case on'
export LS_COLORS='*WAVECAR=93:*CHG*=93:*STOPCAR=31:*INCAR=33:*KPOINTS=33:*POTCAR=33:*job=33:*POSCAR=33:*gz=35'
alias q="qstat_enhanced"


# test if the prompt var is not set
if [ -z "$PS1" ]; then
    # prompt var is not set, so this is *not* an interactive shell
    return
fi

# If we reach this line of code, then the prompt var is set, so
# this is an interactive shell.
# Put all the commands here that should run only if this is an
# interactive shell.

export PS1="\[\e[32m\]Myriad: \w > \[\e[0m\]"
PROMPT_COMMAND="echo -ne \"\033]0;Myriad Dollas in my Bank Account ($USER, $HOSTNAME)\007\""
alias jh="jobhist --info='fstime,fetime,job_number,exit_status,job_name,slots'"
jh
q
export PATH="${HOME}/Packages/vaspup2.0/bin:${PATH}"
. ~/Packages/z/z.sh
