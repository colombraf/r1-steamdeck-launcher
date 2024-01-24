ssh r1-user@r1-face << EOF2
tmux send-keys -t yarprun C-c
sleep 1;
tmux kill-session -t yarprun
EOF2

ssh r1-user@r1-torso << EOF1
tmux send-keys -t yarprun C-c
sleep 1;
tmux kill-session -t yarprun
EOF1

ssh r1-user@r1-base << EOF
tmux send-keys -t yarprun C-c
sleep 1;
tmux kill-session -t yarprun
tmux send-keys -t yarpserver C-c
sleep 1;
tmux kill-session -t yarpserver
EOF



