source ~/.profile
source ~/.bash_aliases

if [ -f /opt/homebrew/share/liquidprompt ]; then
  . /opt/homebrew/share/liquidprompt
fi

export SHELL_SESSION_HISTORY=0
export HISTFILESIZE=1000000
export HISTSIZE=1000000

export NVM_DIR="$HOME/.nvm" 
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


PATH=$PATH:~/bin

eval "$(/opt/homebrew/bin/brew shellenv)"
