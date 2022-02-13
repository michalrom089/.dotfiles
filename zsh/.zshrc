# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mromanow/.oh-my-zsh"
export DOCKER_HOST="tcp://localhost:2375"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


source $ZSH/oh-my-zsh.sh
source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/powerlevel10k.zsh-theme

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias AKS_LOGIN='az account set -s $AZ_SUBSCRIPTION  && az aks get-credentials -n $AZ_PROJECT-k8s-euw-aks-01-$AZ_ENVIRONMENT -g $AZ_PROJECT-k8s-euw-01-$AZ_ENVIRONMENT -f $KUBECONFIG --overwrite-existing'

alias AKS_VABANK='export KUBECONFIG=~/.kube/aks_vabank && AZ_PROJECT=vabank && source ~/.feed_vabank'
alias AKS_VABANK_DEV='AZ_SUBSCRIPTION=sc-13375-vabank-dev && AZ_ENVIRONMENT=dev'
alias AKS_VABANK_UAT='AZ_SUBSCRIPTION=sc-13375-vabank-uat && AZ_ENVIRONMENT=uat'
alias AKS_VABANK_XYZ='AZ_SUBSCRIPTION=sc-13375-vabank-xyz && AZ_ENVIRONMENT=xyz'
alias AKS_VABANK_LOGIN='AKS_VABANK && AKS_VABANK_XYZ && AKS_LOGIN && AKS_VABANK_UAT && AKS_LOGIN && AKS_VABANK_DEV && AKS_LOGIN --admin'

alias AKS_CARE='export KUBECONFIG=~/.kube/aks_care && AZ_PROJECT=care && source ~/.feed_care'
alias AKS_CARE_DEV='AZ_SUBSCRIPTION=sc-15556-AlleInsurance-dev && AZ_ENVIRONMENT=dev'
alias AKS_CARE_UAT='AZ_SUBSCRIPTION=sc-15556-AlleInsurance-uat && AZ_ENVIRONMENT=uat'
alias AKS_CARE_XYZ='AZ_SUBSCRIPTION=sc-15556-AlleInsurance-xyz && AZ_ENVIRONMENT=xyz'
alias AKS_CARE_LOGIN='AKS_CARE && AKS_CARE_UAT && AKS_LOGIN && AKS_CARE_XYZ && AKS_LOGIN && AKS_CARE_DEV && AKS_LOGIN --admin'

alias k='kubectl'
alias k-resources="k get deployments -o go-template --template='{{range .items}}{{.metadata.name}}{{\";\"}}{{range .spec.template.spec.containers}}{{.resources.requests.memory}}{{\";\"}}{{.resources.limits.memory}}{{\";\"}}{{.resources.requests.cpu}}{{\"\\n\"}}{{end}}{{end}}'"

alias di='cd ~/allegropay/devops/ops-azure-infrastructure'
alias da='cd ~/allegropay/devops/ops-azure-core-automation'
alias ndi='di && nvim .'
alias nda='da && nvim .'

alias tdi='tmux new-session -t di'
alias tda='tmux new-session -t da'

alias d='cd ~/allegropay/devops'
alias ap='cd ~/allegropay'

export DOCKER_HOST=tcp://localhost:2375
export PATH=$PATH:$HOME/.dotnet/tools
export PATH=$PATH:$HOME/tools/buildkit/bin
export PATH=$PATH:/home/mromanow/.linkerd2/bin
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export ASPNETCORE_ENVIRONMENT="Development"

AKS_VABANK
# kubectx vabank-k8s-euw-aks-01-dev-admin &>/dev/null

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
autoload -U compinit && compinit
