# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/rgujju/.config/rgujju/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

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

alias apps="cd /home/rgujju/Apps/Execs"
alias ratch="cd /home/rgujju/Documents/Embedded/wearables/implementation/nrf52840/code/zephyr/ratch"
alias zephyr="cd /home/rgujju/Documents/Embedded/frameworks/zephyrproject"
alias zephyr_pr="cd /home/rgujju/Documents/Embedded/frameworks/ZEPHYR_FOR_PR/zephyr_for_PR"
alias uw="cd /home/rgujju/Documents/MASTERS/UW/Coursework/AUT_2021"
alias wisp="cd /home/rgujju/Documents/Embedded/wisp/wisp5_sw"

# export moddable SDK env vars
export MODDABLE=/home/rgujju/Documents/Embedded/frameworks/moddable
export PATH=$PATH:$MODDABLE/build/bin/lin/release

# export ESP-IDF env vars
export IDF_PATH=/home/rgujju/Documents/Embedded/frameworks/esp-idf
export PATH=$PATH:~/esp32/xtensa-esp32-elf/bin:$IDF_PATH/tools

# export ZEPHYR SDK env vars
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
export ZEPHYR_SDK_INSTALL_DIR=/home/rgujju/zephyr-sdk
#export ZEPHYR_TOOLCHAIN_VARIANT=gccarmemb
export GCCARMEMB_TOOLCHAIN_PATH=/home/rgujju/Documents/Embedded/frameworks/gcc-arm-none-eabi-9-2019-q4-major/

export PATH="$PATH:/usr/local/cuda-10.2/bin:/home/rgujju/.local/bin:/home/rgujju/Documents/Embedded/frameworks/gcc-arm-none-eabi-9-2019-q4-major/bin"

# Export flutter bin
export PATH="$PATH:/home/rgujju/Documents/Embedded/frameworks/flutter/bin"

# Full colours in terminal
export LC_ALL="en_US.UTF-8"
TERM=xterm-256color

# Dont share history between different instances of zsh
unsetopt share_history

# Run uncrustify recursively on all files
alias uncrustify-all='find . \( -name "*.cpp" -o -name "*.c" -o -name "*.h" -o -name "*.ino" \) -exec uncrustify -c ~/.uncrustify.cfg --no-backup {} +'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

