export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"
export MAIL=$USER@student.42tokyo.jp

ZSH_THEME="robbyrussell"


plugins=(
	git
	zsh-autosuggestions
	)


source $ZSH/oh-my-zsh.sh
eval `ssh-agent`; ssh-add ~/.ssh/id_rsa;
