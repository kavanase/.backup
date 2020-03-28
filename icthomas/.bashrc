# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
#module load gcc
source /shared/ucl/apps/bin/defmods
alias ll="ls -lh"
bind 'set completion-ignore-case on'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mmm0650/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mmm0650/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mmm0650/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mmm0650/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias mrv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs less'
alias fv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs tail -f'
export PATH="~/Packages/bin:$PATH"
export PATH="${HOME}/Packages/vaspup2.0/bin:~/.local/bin:${PATH}"
alias q='qstat_enhanced'

export LS_COLORS='*WAVECAR=93:*CHG*=93:*STOPCAR=31:*INCAR=33:*KPOINTS=33:*POTCAR=33:*job=33:*POSCAR=33:*gz=35'
PROMPT_COMMAND="echo -ne \"\033]0;icThomas Havin a Walsh of a time ($USER up in this shit, $HOSTNAME)\007\""
# test if the prompt var is not set
if [ -z "$PS1" ]; then
    # prompt var is not set, so this is *not* an interactive shell
    return
fi

# If we reach this line of code, then the prompt var is set, so
# this is an interactive shell.

# Put all the commands here that should run only if this is an
# interactive shell.

export PS1="\[\e[32m\]icThomas: \w > \[\e[0m\]"
alias jh="jobhist --info='fstime,fetime,job_number,job_name,slots'"
jh
q
budgets
. ~/Packages/z/z.sh
