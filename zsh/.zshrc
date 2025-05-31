export ZSH="$HOME/.oh-my-zsh"

#export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/kitty.app/bin:$HOME/.local/bin:$PATH"

export PATH=/home/lenovo/.fzf/bin:$PATH

ZSH_THEME="amuse"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add asdf to PATH and initialize it
. "$HOME/.asdf/asdf.sh"
. $HOME/.asdf/completions/asdf.bash

# alias
alias ..="cd .."
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias ga="git add ."
alias gp="git pull"
alias gpo="git push origin $1"
alias gbd="git branch -D $1"
alias gch-="git checkout -b $1"
alias gch="git checkout $1"
alias python=/usr/bin/python3
alias n="nvim"
alias rms="rm ~/.local/share/nvim/sessions/*"
alias ai="ollama run llama3.2"
alias bat="batcat"


#update kitty
alias kittyupdate='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# for zoxide
eval "$(zoxide init zsh)"

# for go lang
export PATH=$PATH:/usr/local/go/bin
#for gopls path
export PATH=$PATH:$(go env GOPATH)/bin

#for vim
bindkey -v

# Load fzf key bindings and auto-completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


# Yazi config
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

