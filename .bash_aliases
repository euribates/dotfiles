# some ls aliases
alias ll='lsd -a -F -l --date relative'
alias la='lsd -A'
alias l='lsd -l --date relative'

# Alias trabajo
alias cdlib='cd ~/web/Libreria && ~/bin/cdlib.sh' 
alias cdweb='cd ~/web/wwwroot && git pull && termtitle web'
alias cdcgi='cd ~/web/cgi-bin && git pull && termtitle cgi'
alias cdparcanweb='cd ~/web/parcanweb && workon parcanweb && git pull && termtitle parcanweb'
alias cdacl='cd ~/workarea/acl && git pull -v && termtitle ACL'
alias cdnotes='workon notes && git pull -v && termtitle Notes'

# alias para git
alias gpush='git push -v'
alias gitpush='git push -v'
alias gpull='git pull -v'
alias gitpull='git pull -v'
alias ggraph="git log --oneline --decorate --graph"

# Stupid, stupid systemd
alias daemons='systemctl list-units --type=service --state=failed,active'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

