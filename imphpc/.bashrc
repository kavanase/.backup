# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/rds/general/user/sk5419/home/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/rds/general/user/sk5419/home/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/rds/general/user/sk5419/home/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/rds/general/user/sk5419/home/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="${HOME}/Packages/vaspup2.0/bin:${PATH}"
bind 'set completion-ignore-case on'
alias qp="qstat -p"
alias q="qstat_with_cpus_elaptime"
export LS_COLORS='*WAVECAR=93:*CHG*=93:*STOPCAR=31:*INCAR=33:*KPOINTS=33:*POTCAR=33:*job=33:*POSCAR=33:*gz=35'
# Allow the user to set the title.
PROMPT_COMMAND="echo -ne \"\033]0;ImpHPC Bread Baking ($USER up in this shit, $HOSTNAME)\007\""

# test if the prompt var is not set
if [ -z "$PS1" ]; then
    # prompt var is not set, so this is *not* an interactive shell
    return
fi

# If we reach this line of code, then the prompt var is set, so
# this is an interactive shell.
# Put all the commands here that should run only if this is an
# interactive shell.

. ~/Packages/z/z.sh
