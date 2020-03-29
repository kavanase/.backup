# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Source Intel C and Fortran compiler variables
source /opt/intel/mkl/bin/mklvars.sh intel64
source /opt/intel/bin/compilervars.sh intel64
export CC=icc
export FC=ifort

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/openmpi-4.0.3/lib/
export PATH=./:/usr/local/openmpi-4.0.3/bin:$PATH
export OMP_NUM_THREADS=1

# Possibly need to add this so gcc/gfortran includes system headers
export CPATH=$CPATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include

# Add MacVim to PATH and alias to vim
export PATH=/Applications/MacVim.app/Contents/bin:$PATH
alias vim="mvim"

# Ignore insecure directories
ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(github z ssh-agent)

# Enable ssh-agent forwarding 
zstyle :omz:plugins:ssh-agent agent-forwarding on

source $ZSH/oh-my-zsh.sh

# User configuration
# Initialize conda
export PATH="$HOME/anaconda3/bin:$PATH"

# GitHub Settings
GITHUB_USER="kavanase"
GITHUB_PASSWORD="Vekav123"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias hub as git
eval "$(hub alias -s)"

# Including old aliases from Lenovo Laptop
alias bread="cd ~/OneDrive\ -\ Imperial\ College\ London/Bread/"
alias myrsync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/myriad_backup_rsync.sh'
alias grasync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/grace_backup_rsync.sh'
alias impsync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/imphpc_backup_rsync.sh'
alias thosync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/thomas_backup_rsync.sh'
alias ictsync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/icthomas_backup_rsync.sh'
alias arcsync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/archer_backup_rsync.sh'
alias katsync='~/OneDrive\ -\ Imperial\ College\ London/Bread/Projects/HPC_Local_Backup/kathleen_backup_rsync.sh'

export LS_COLORS='*WAVECAR=93:*CHG*=93:*STOPCAR=31:*INCAR=33:*KPOINTS=33:*POTCAR=33:*job=33:*POSCAR=33:*gz=35'
# Old Terminal Window Title Setting
# Uncomment if ya want it back
# PROMPT_COMMAND="echo -ne \"\033]0;Lenovo Laptop Hometown Cruisin ($HOSTNAME)\007\""

# Enable oh-my-zsh syntax highlighting
source /Users/kavanase/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
