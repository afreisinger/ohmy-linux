#####################
# change the default option of frequently used launch commands
#####################

# run in quite mode
#   - it ignores warning messages from nanorc file. it can happen If you are using older version of nano with new version options
alias nano="nano -q"

# enable unicode (utf-8) char by default
#   - needed for powerline
alias tmux="tmux -u"


# launch visual studio in bg
alias vscode="code . &"



# use neo vim
# alias vim="nvim"
# alias vi="nvim"

# launch dev tmux session - replace the value with recent work
alias ldev='sh /home/krishnam/.mytmux/session_scripts/mylinux_practice_session.sh'
