alias wiki='vim -c "VimwikiIndex"'
alias csafe='g++ -std=c++17 -Wshadow -Wall -DLOCAL -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -g'
alias cfast='g++ -std=c++17 -Wshadow -Wall -DLOCAL -O3'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

mkcd()
{
	#if [[ -d $1 ]]
	mkdir $1 && cd $1
}

ssh_mc_server=167.99.31.53
