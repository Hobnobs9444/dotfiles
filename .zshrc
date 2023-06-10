# Plugings

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    # source from linuxbrew 
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    # set windows home
    alias w="/mnt/c/Users/mark"

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

