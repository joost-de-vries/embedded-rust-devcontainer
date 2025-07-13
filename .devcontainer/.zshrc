# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="evan"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# TODO: Figure out why the git plugin is slow inside a devcontainer. 
# Might be due to the .git index being shared between the host (OSX)
# and the container (Linux) and both systems are rebuilding the index 
# the entire time
plugins=() 

source $ZSH/oh-my-zsh.sh

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

alias pnpm="bazel run -- @pnpm//:pnpm --dir $PWD"
alias node="bazel run -- @nodejs_host//:node"

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

# source /usr/local/nvm/nvm.sh