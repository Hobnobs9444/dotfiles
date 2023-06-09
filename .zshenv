# .zshenv
# ALWAYS sourced unlike .zprofile and .zshrc

# PATH

# add usr/local/bin
export PATH="/usr/local/bin:${PATH}"

# setting PATH for Python 3.9
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mark/google-cloud-sdk/path.zsh.inc' ] 
then 
	source '/Users/mark/google-cloud-sdk/path.zsh.inc' 
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mark/google-cloud-sdk/completion.zsh.inc' ]
then 
	source '/Users/mark/google-cloud-sdk/completion.zsh.inc'
fi

export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
. "$HOME/.cargo/env"
