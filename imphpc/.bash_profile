echo "What are the rules for breakfast today?"
export PATH=~/vasp.5.4.4/bin:/rds/general/user/sk5419/home/miniconda3/bin:~/.local/bin:$PATH:~/Packages/bin:~/Packages/vaspup2.0/bin
module load gnuplot
eval "$(register-python-argcomplete pmg)"

alias mrv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs less'
alias fv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs tail -f'

alias qp='qstat -p'
alias q="qstat_with_cpus_elaptime"
#bind 'set completion-ignore-case on'
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

export PS1="\[\e[32m\]IMPHPC: \w > \[\e[0m\]"

q
echo " Job Num     Finish Time    CPUs  Runtime                    Working Directory"
echo "--------- ----------------- --- --------- --------------------------------------------------"
tail -5 ~/job_log
#q -H
