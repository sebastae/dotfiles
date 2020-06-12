export ZSH="~/.oh-my-zsh"
ZSH_THEME="common"

plugins=(
	git
	zsh-autosuggestions
	zsh-completions
	)
source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

export TERM=xterm-256color
export PATH=$PATH:~/bin/
export CLASSPATH="$CLASSPATH;~/classes"

source ~/.aliases
source ~/.ENV_VAR
source ~/bin/gits.sh

purge(){
	ps aux | grep "$1" | grep -v "grep" | awk "{print \$2}" | xargs sudo kill -9
}

psgrep(){
	ps aux | grep "$1" | grep -v "grep"
}

source ~/.bashfunc
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval $(ssh-agent -s) > /dev/null
export PATH="$PATH:~/Apps"
