 # If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/Cellar/macvim/8.0-133/MacVim.app/Contents/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/shi-rongliu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="tjkirch"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# 
setopt AUTO_LIST            # auto list choices on an ambiguous completion
setopt AUTO_NAME_DIRS
setopt AUTO_CD 
setopt AUTO_MENU            # auto use menu completion after the second consecutive request for completionn
setopt MENU_COMPLETE      
setopt ALWAYS_TO_END
setopt ALWAYS_LAST_PROMPT

setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY
setopt CORRECT              # command CORRECTION
setopt EXTENDED_HISTORY     # puts timestamps in the history

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast vi-mode perl python shell-proxy web-search globalias common-aliases lol z zsh-z cp osx tmux history man postgres docker docker-compose docker-machine)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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
alias grep="grep --colour=always"
alias format="clang-format -i"
alias vi='nvim'
alias cron='crontab -e'
alias jbuild='bundle exec jekyll build'
alias jserve='bundle exec jekyll serve'
alias gitdiff="git difftool"
alias fdfast='/usr/local/Cellar/fd/8.2.1/bin/fd'
alias algolia='ALGOLIA_API_KEY='83b4446203b0dc2a722ce27aef211b7e' bundle exec jekyll algolia'

# SQL
alias createdb='createdb' # create database
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Enable caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

# display some informations
function status()
{
  local system="$(cat /etc/[A-Za-z]*[_-][rv]e[lr]*)"
  print ""
  print "Date..: "$(date "+%Y-%m-%d %H:%M:%S")""
  print "Shell.: Zsh $ZSH_VERSION (PID = $$, $SHLVL nests)"
  print "Term..: $TTY ($TERM), $BAUD bauds, $COLUMNS x $LINES cars"
  print "Login.: $LOGNAME (UID = $EUID) on $HOST"
  print "System: $system"
  print "Uptime:$(uptime)"
  print ""
}

# Compatible with Mac
if [ `uname` = "Darwin" ]; then
  alias ls="ls -G"
elif [ `uname -o` = "GNU/Linux" ]; then
  alias ls="ls --color=always"
fi

#Alias Directories
#hash -d dir_name="dir_path"
hash -d Louis="/Users/shi-rongliu/Documents/GitHub/Louis.github.io"
hash -d myblog="/Users/shi-rongliu/Documents/GitLab/shirong"
hash -d snippets="/Users/shi-rongliu/.config/nvim/plugged/vim-snippets/snippets"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
