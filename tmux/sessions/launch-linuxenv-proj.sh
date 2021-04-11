#!/usr/bin/bash

session="proj-linux"
repo_path="~/ghrepo/ohmy-linux"

tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]
then
	tmux new-session -s $session -n editor -d

	tmux send-keys -t $session "cd $repo_path" C-m
	tmux send-keys -t $session "nano $repo_path/tmux/.tmux.conf" C-m

	tmux split-window -v -p 20 -t $session

	tmux send-keys -t $session:1.2 "cd $repo_path" C-m
	tmux send-keys -t $session:1.2 "git status" C-m

	tmux split-window -h -p 20 -t $session

	tmux send-keys -t $session:1.3 "top" C-m

	tmux new-window -n config -t $session
	tmux send-keys -t $session:2.1 "nano $repo_path/zsh/.zshrc" 

	tmux split-window -h -t $session:2
	tmux send-keys -t $session:2.2 "nano $repo_path/alias/.alias" C-m
        tmux select-pane -t $session:2.1                                                        
                                                                                            
       tmux new-window -n manual -t $session                                                   
       tmux send-keys -t $session:3.1 "man tmux" C-m                                           
       tmux select-pane -t $session:3.1                                                        
       tmux split-window -h -t $session:3                                                      
       
       tmux new-window -n fbrowser -t $session                                                 
       tmux send-keys -t $session:4.1 "ranger 2>/dev/null" C-m                                             
                                                                                             
       tmux select-window -t $session:1                                                        
       tmux select-pane -t $session:1.1    
fi

tmux attach-session -t $session