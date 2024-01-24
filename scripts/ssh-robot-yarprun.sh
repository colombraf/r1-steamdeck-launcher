ssh r1-user@r1-base << EOF
tmux new -d -s yarpserver yarpserver
tmux new -d -s yarprun
tmux send-keys -t  yarprun "docker run --rm -it --privileged --network host --pid host -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -e QT_X11_NO_MITSHM=1 --name r1base_tourCore2 elandini84/r1images:tourCore2_ubuntu22.04_iron_devel" Enter
sleep 1;
tmux send-keys -t  yarprun "yarprun --server /r1-base --log" Enter
EOF

ssh r1-user@r1-torso << EOF1
tmux new -d -s yarprun
tmux send-keys -t  yarprun "yarprun --server /r1-torso --log" Enter
EOF1

ssh r1-user@r1-face << EOF2
tmux new -d -s yarprun
tmux send-keys -t  yarprun "yarprun --server /r1-face --log" Enter
EOF2
