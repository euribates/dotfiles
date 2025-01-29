# some more ls aliases
alias ll='lsd -alF --date relative'
alias la='lsd -A'
alias l='lsd --date relative'

# Alias trabajo
alias cdlib='cd ~/web/Libreria && git pull -v && termtitle "PCINFJILEON LIB"'
alias cdweb='cd ~/web/wwwroot && git pull -v && termtitle "PCINFJILEON WEB"'
alias cdcgi='cd ~/web/cgi-bin && git pull -v && termtitle "PCINFJILEON CGI"'
alias cdparcanweb='cd ~/web/parcanweb && workon parcanweb && git pull -v && termtitle "Parcanweb" && just restart'
alias cdacl='cd ~/workarea/acl && git pull -v && termtitle "PCINFJILEN ACL"'
alias cdnotes='cd ~/workarea/notes && git pull -v && termtitle "Notes"'

# alias para git
alias gpush='git push -v'
alias gitpush='git push -v'
alias gpull='git pull -v'
alias gitpull='git pull -v'
alias ggraph="git log --oneline --decorate --graph"

# alias para pbcopy
alias pbcopy="xclip -sel clip"

# Stupid, stupid systemd
alias daemons='systemctl list-units --type=service --state=failed,active'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias python='PYENV_VERSION=system python3'

