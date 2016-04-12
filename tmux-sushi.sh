#!/bin/sh

tmux new -ds 'dev'

tmux send -t 'dev' 'cd ~/boxes/trusty-lamp7' C-m
tmux send -t 'dev' 'tmux split -h' C-m
tmux send -t 'dev' 'tmux split -v' C-m
tmux send -t 'dev' 'tmux select-layout tiled' C-m
tmux send -t 'dev' 'tmux rename-window LOCAL-SERVER' C-m
tmux send -t 'dev' 'clear' C-m


sleep 1
tmux send -t 'dev' 'tmux select-pane -t 1' C-m
sleep 1
tmux send -t 'dev' 'cd ~/www/sushi' C-m
tmux send -t 'dev' 'clear' C-m


sleep 1
tmux send -t 'dev' 'tmux select-pane -t 2' C-m
sleep 1
tmux send -t 'dev' 'cd ~/boxes/trusty-lamp7' C-m
tmux send -t 'dev' 'clear' C-m
tmux send -t 'dev' 'vup' C-m

tmux attach-session -t 'dev'


