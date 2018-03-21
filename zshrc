# . /usr/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
#
function get_pwd() {
  echo "${PWD/$HOME/~}"
}

PROMPT="%F{12} [%*] %F{1}%U%20d%u %F{12}:: "

# Global syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autocompletion
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES

# Vi mode
# bindkey -v

# Auto ls at cd
function chpwd() {
	emulate -L zsh
	ls --color=auto
}

# Ctrl + arrow
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Go previous dir
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

export GOPATH=$HOME/Code/go/
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/$HOME/Code/go/bin

# LS colors
export LS_COLORS="ow=01;90:di=04;31:*.go=00;33:fi=00;97:*.docx=00;34:*.odt=00;34:ln=04;31:ex=01;35:*.py=00;33:*.tar.gz=00;37:*.tar.bz=00;37:*.tar.bz2=00;37:*.tar=00;37:*.iso=00;33:*.sh=01;31"

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias ls="ls --color=auto"
alias pol="/home/simon/.config/simplebar/launch.sh"
alias gopath="cd ~/Code/go/src/Programs"
alias ccompilestuff="export CXX=x86_64-w64-mingw32-g++ && export CC=x86_64-w64-mingw32-gcc"
alias giffpath="find 2> >(grep -v 'Permission denied' >&2) | grep"
alias word="libreoffice --writer"
alias powerpoint="libreoffice --impress"
alias multiscreen='xrandr --output DP2 --auto --left-of eDP1'
alias sshproxy="ssh -C2qTnN -D 8080 simon@78.71.26.88"
alias tar.gz="tar xzf"
alias tar.xz="tar xJf"
alias kysolle="while true; do echo 'Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Kys Olle Olle Kys Olle Kys Olle Kys Olle'; done | lolcat"
alias dob="cd ~/Code/go/src/github.com/AlmightyF*/dob"
