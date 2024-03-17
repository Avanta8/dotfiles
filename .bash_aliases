# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    # alias dir='dir --color=auto'
    # alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if exists eza; then
    # Changing "ls" to "eza"
    alias ls='eza'
    alias la='eza -a'  # all files and dirs
    alias ll='eza -al' # long format
    alias lt='eza -T'  # tree listing
    alias l.='eza -a | egrep "^\."'
else
    # some more ls aliases
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
fi

# create parent directories and verbose
alias mkdir='mkdir -pv'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias aptup='sudo apt update && sudo apt upgrade'
alias aptupd='sudo apt update'
alias aptupg='sudo apt upgrade'
alias aptin='sudo apt install'
alias aptrm='sudo apt remove'

# sudo including user PATH
alias mysudo='sudo -E env "PATH=$PATH"'

alias python='python3'
alias pactivate='. venv/bin/activate'

if exists tldr && exists fzf; then
    alias tldrf='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr'
fi

if exists lazygit; then
    alias lg=lazygit
fi
