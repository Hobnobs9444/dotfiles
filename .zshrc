# Plugings

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # source from linuxbrew 
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    
    export PASSWORD_STORE_ENABLE_EXTENSIONS=true
    export PASSWORD_STORE_EXTENSIONS_DIR='/home/mark/.password-store/.extensions/'
    # set windows home
    alias w="cd /mnt/c/Users/mark"
    
    # start TMUX
    if [ -z "$TMUX" ]
      then
        tmux attach -t TMUX || tmux new -s TMUX
    fi

    # wslu
    export BROWSER=wslview

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
alias pass='PASSWORD_STORE_ENABLE_EXTENSIONS=true pass'

# Starship prompt
eval "$(starship init zsh)"

