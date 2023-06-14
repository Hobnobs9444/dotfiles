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

elif [[ "$OSTYPE" == "msys" ]]; then
    echo "You're on windows!"
else
    echo "Unsupported operating system"
fi
 
# Aliases
alias r="radian"
alias c="clear"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Starship prompt
eval "$(starship init zsh)"

