# confirm befor overwriting 
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# enable colorized ls output
alias ls='ls -G'

# enable colorized grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias pacman-clean='sudo pacman -Qdtq | sudo pacman -Rs -'
