# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
# ZSH_THEME="jaischeema"
ZSH_THEME="jonathan"
# ZSH_THEME="juanghurtado"
# ZSH_THEME="nanotech"
# ZSH_THEME="philips"
# ZSH_THEME="re5et"
# ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

function gvim() {
	vim -p `grep -l $1 | perl -pe 's/\n/ /g';`
}

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# command replacement
alias c='clear'

alias cat='bat'

alias find='fd'

# USE NVIM
alias emacs='nvim'
alias vim='nvim -c "NvimTreeOpen"'

alias grep='rg'

# alias ls='exa -la -s=ext'
alias ls='lsd -la'

# short handles
alias dev='cd ~/Desktop/Devs'
alias dotfiles='cd ~/dotfiles'
alias ga='git add'
alias gc='git cz'
alias gp='git push'
alias gs='git status'
alias gl='git log'
alias gb='git branch'
alias lg='lazygit'
alias vimrc='vim ~/.vimrc'
alias y='yarn'
alias zshrc='vim ~/.zshrc'
alias reyabai='brew services restart yabai'
alias wf2='waifu2x -s 2 -n 4'

eval $(thefuck --alias)
