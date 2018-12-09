# User configuration

export NPM_GLOBAL_PATH=~/.npm-global
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH="/opt/local/bin:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$PATH:$HOME/java/apache-maven-3.3.3/bin:$HOME/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.4/bin"
export PATH="$PATH:$NPM_GLOBAL_PATH/bin"
export PATH="$PATH:$HOME/tools/google-cloud-sdk/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export GOPATH=$HOME/projects/golang
# export PATH="$PATH:$GOPATH/bin"

export PATH=$PATH:~/.cargo/bin

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias aws="aws-2.7"

function macdown () { open -n -b "com.uranusjr.macdown" --args "$PWD/$1"; }

alias xctool="/opt/local/xctool-v0.2.8/bin/xctool"

###-tns-completion-start-###
if [ -f $HOME/.tnsrc ]; then 
    source $HOME/.tnsrc 
fi
###-tns-completion-end-###

# bindkey -v
# bindkey '^P' up-history
# bindkey '^N' down-history
# bindkey '^?' backward-delete-char
# bindkey '^h' backward-delete-char
# bindkey '^w' backward-kill-word
# bindkey '^r' history-incremental-search-backward


# export PATH="/Users/bernard/anaconda/bin:$PATH"
