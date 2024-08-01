if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH
export ZSH="$HOME/.oh-my-zsh"
export HISTSIZE=10000
export SAVEHIST=10000
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git shrink-path zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


# GO
export PATH=$PATH:~/go/bin/
export GO111MODULE=on
export GOPRIVATE=*.itrf.tech
export GOPROXY=https://proxy.golang.org,direct
export GONOSUMDB=*
# export GOTOOLDIR=/usr/local/go/bin/pkg/tool/linux_amd64
# export GOROOT=/opt/homebrew/bin/go
# export GOPATH=/opt/homebrew/bin/go
# export PATH=/usr/local/go/bin:$PATH
# export GOPATH=/home/acid/go
# export GOROOT=/usr/local/go

# Python
export PATH=$PATH:/Users/acid/Library/Python/3.10/bin

# Etc.
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/opt/cprocsp/bin
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"

# Private
export PRIVATE_TOKEN=

if [[ -f "$HOME/.zshalias" ]];
then
	source "$HOME/.zshalias"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

