# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="amelia"

BRING_YOUR_OWN_TRIAS_PS1="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Disable update prompt and just auto-update oh-my-zsh
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Use another custom folder than $ZSH/custom
ZSH_CUSTOM=~/.amelia

# Define plugins to load (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.amelia/plugins/
plugins=(
  git
  kubectl
  helm
  monzo
)

source $ZSH/oh-my-zsh.sh

# Stop the user@host part appearing on the powerline when local, we know what system we're on!
DEFAULT_USER=`whoami`

# Enable Monzo SSHless workflows
NO_MONZO_SSH=true
[ -f $HOME/.starter-pack/zshrc ] && source $HOME/.starter-pack/zshrc

source $ZSH_CUSTOM/*.zsh

[ -f $HOME/src/github.com/monzo/starter-pack/zshrc ] && source $HOME/src/github.com/monzo/starter-pack/zshrc
