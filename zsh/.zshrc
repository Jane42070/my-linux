#######################################
#									  #
#		  ZSH CUSTOM PLUGINS		  #
#									  #
#######################################
source ~/zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle vi-mode
antigen bundle autojump
# antigen bundle horosgrisa/mysql-colorize
antigen bundle laurenkt/zsh-vimto
antigen bundle zpm-zsh/dircolors-material
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle hlissner/zsh-autopair
antigen apply
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/diaz/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
# 启动屏
alias s=screenfetch
alias n=neofetch
alias pacman="sudo pacman"
alias dict="ydict"
alias md="mkdir"
alias python="python3.8"
alias tomcat="catalina"
# Backup conf files in Mac
alias backup="sh ~/OpenSource/my-linux/my-scripts/backup.sh"

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
plugins=(git autojump)

# set vi-mode use neovim as default editor
# use shortcut <ESC>+v in vi-mode
EDITOR=nvim
export EDITOR

# source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
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
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# _COLUMNS=$(tput cols)
# _MESSAGE=" FBI Warining "
# y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
# spaces=$(printf "%-${y}s" " ")
# 
# echo " "
# echo -e "${spaces}\033[41;37;5m FBI WARNING \033[0m"
# echo " "
# _COLUMNS=$(tput cols)
# _MESSAGE="Ferderal Law provides severe civil and criminal penalties for"
# y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
# spaces=$(printf "%-${y}s" " ")
# echo -e "${spaces}${_MESSAGE}"
# 
# _COLUMNS=$(tput cols)
# _MESSAGE="the unauthorized reproduction, distribution, or exhibition of"
# y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
# spaces=$(printf "%-${y}s" " ")
# echo -e "${spaces}${_MESSAGE}"
# 
# _COLUMNS=$(tput cols)
# _MESSAGE="copyrighted motion pictures (Title 17, United States Code,"
# y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
# spaces=$(printf "%-${y}s" " ")
# echo -e "${spaces}${_MESSAGE}"
# 
# _COLUMNS=$(tput cols)
# _MESSAGE="Sections 501 and 508). The Federal Bureau of Investigation"
# y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
# spaces=$(printf "%-${y}s" " ")
# echo -e "${spaces}${_MESSAGE}"
# 
# _COLUMNS=$(tput cols)
# _MESSAGE="investigates allegations of criminal copyright infringement"
# y=$(( ( $_COLUMNS - ${#_MESSAGE} )  / 2 ))
# spaces=$(printf "%-${y}s" " ")
# echo -e "${spaces}${_MESSAGE}"
# 
# _COLUMNS=$(tput cols)
# _MESSAGE="(Title 17, United States Code, Section 506)."
eval `gdircolors -b $HOME/.dir_colors`
export PATH="/usr/local/opt/libarchive/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export PATH="/usr/local/sbin:$PATH"
