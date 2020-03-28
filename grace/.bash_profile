# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
module load gnuplot
export PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/Packages/bin
eval "$(register-python-argcomplete pmg)"
alias ll="ls -lh"
alias mrv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs less'
alias fv='find . -maxdepth 1 -name "vasp_out*" | xargs ls -t | head -1 | xargs tail -f'
