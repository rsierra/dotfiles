ZSH=$HOME/.oh-my-zsh
ZSH_THEME="vortizhe"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git rails brew gem osx ruby rbenv bundler cap rake sublime heroku mac rbates node)

export PATH="/usr/local/bin:$PATH"
export EDITOR='subl -w'

source $ZSH/oh-my-zsh.sh

# cd
alias ..='cd ..'
alias ...='cd ../..'

# git
alias gP='git push origin $(current_branch)'
alias gsmu="git submodule update --init"
alias gm='git merge --no-ff'

# rails
alias rst='touch tmp/restart.txt'
alias fs='foreman start'
alias fsl='foreman start -f Procfile.local'
# Command jump the alias and uses de global rails foreman, not the bundled
alias gfs='command foreman start'
alias gfsl='command foreman start -f Procfile.local'


# commands starting with % for pasting from web
alias %=' '

# misc
alias reload='source ~/.zshrc'
alias e='subl'

# osx
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -boolean false && killall Finder"
alias updatedb="sudo /usr/libexec/locate.updatedb"

# Boxen environment
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Codification Fix for some some ssh sessions (Lavinia servers)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
