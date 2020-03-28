# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
module load gnuplot
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export python="python3.7"
export PATH=~/miniconda3/bin:$PATH:~/Packages/bin
eval "$(register-python-argcomplete pmg)"
alias mrv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs less'
alias fv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs tail -f'
alias ll="ls -lh"
