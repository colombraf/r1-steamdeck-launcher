date > ~/r1-steamdeck-launcher/logs/start-tourCore2.txt
xhost + >> ~/r1-steamdeck-launcher/logs/start-tourCore2.txt
docker run -it -d --rm --privileged --network host --pid host -e DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/deck/r1-steamdeck-launcher/scripts/mnt/:/home/user1/mnt/ --name tourCore2 elandini84/r1images:tourCore2_ubuntu22.04_iron_devel >> ~/r1-steamdeck-launcher/logs/start-tourCore2.txt
sleep 1;
docker exec --env-file .env tourCore2 yarprun --server /steamdeck --log >> ~/r1-steamdeck-launcher/logs/start-tourCore2.txt &
