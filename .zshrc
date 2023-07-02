# Plugings

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # source from linuxbrew 
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    
    # X11 forwarding
    export DISPLAY=$(ip route list default | awk '{print $3}'):0
    export LIBGL_ALWAYS_INDIRECT=1

    # set windows home
    alias w="cd /mnt/c/Users/mark"
    
    # start TMUX
    if [ -z "$TMUX" ]
      then
        tmux attach -t TMUX || tmux new -s TMUX
    fi
    

elif [[ "$OSTYPE" =~ "darwin" ]]; then
    # source from .zsh
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    
    # setup pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    
    # enable direnv
    eval "$(direnv hook zsh)"

else
    echo "Unsupported operating system"
fi

# set variables
export LANG="en_GB.UTF-8"

# zsh plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/pass-zsh-completion/pass-zsh-completion.plugin.zsh

# Aliases
alias r="radian"
alias c="clear"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias pass='PASSWORD_STORE_ENABLE_EXTENSIONS=true pass'

# Starship prompt
eval "$(starship init zsh)"

