#####################
# frequently used launch commands
#####################

# launch visual studio in bg
alias vscode='code &'

##### python venv ########
# create virtual env with py3
alias venv="virtualenv --python python3"

# activate venv
avenv (){
  source ${1}/bin/activate
}

# snapshot venv requirements
ssvenv (){
  mkdir -p venv
  pip3 freeze > venv/requirements.venv
}

# recreate venv from snapshot
alias rvenv="pip3 install -r venv/requirements.venv"

# load virtual env from snapshot

# To use venv wrapper extention
alias mkvenv="mkvirtualenv"

# Activates the virtual environment or switches from the current environment to the specified one
alias svenv="workon" #switch or start workspace

# Deactivates (kill) the virtual environment.
alias kvenv="deactivate"




# use neo vim
alias vim="nvim"
alias vi="nvim"

# launch dev tmux session - replace the value with recent work
alias ldev='sh /home/krishnam/.mytmux/session_scripts/mylinux_practice_session.sh'


