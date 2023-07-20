#prompt and aliases
precmd() {print -P "%F{green}%/"}
prompt='%# '
alias ls='ls --color'
alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -lA'
alias pip='python3 -m pip'

#Autocomple config
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) #include hidden files

#vim mode
bindkey -v

#path
export PATH=$PATH:/opt/riscv/bin
export PATH=$PATH:/opt/riscv
export PATH=$PATH:/home/pvj/.local/bin
export BROWSER=/usr/bin/firefox
