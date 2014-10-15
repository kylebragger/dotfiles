HISTFILESIZE=10000

export DOCKER_HOST=tcp://192.168.59.103:2375

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

# http://blog.bigdinosaur.org/easy-ps1-colors/
function prompt {
  local WHITE="\[\033[0;37m\]"
  local CYAN="\[\033[0;36m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  export PS1="$WHITE[$CYAN\w$WHITE $PURPLEBOLD\$git_branch$WHITE]\[\033[00m\]\$ "
}
prompt

alias redis='cd /Users/kyle/Code/redis-2.8.9/src && ./redis-server'
alias gs='git status'
alias co='git checkout'
alias gf='git fetch'
alias sb='subl .'
alias hc='heroku run console'
alias hcex='heroku run console -a exposure-live'
alias ur='unicorn_rails'
alias fs='foreman start'
alias pad='rake simulator device_family=ipad'
alias iphone='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'

PATH="/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
