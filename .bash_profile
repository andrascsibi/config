source ~/.profile
source ~/.bash_aliases

if [ -f /usr/local/share/liquidprompt ]; then
  . /usr/local/share/liquidprompt
fi

export SHELL_SESSION_HISTORY=0
export HISTFILESIZE=1000000
export HISTSIZE=1000000



