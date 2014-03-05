ZSH=$HOME/.oh-my-zsh
ZSH_THEME="vortizhe"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR='subl -w'

source $ZSH/oh-my-zsh.sh

# Boxen environment
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
