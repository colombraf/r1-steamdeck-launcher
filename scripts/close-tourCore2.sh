date > ~/r1-steamdeck-launcher/logs/close-tourCore2.txt
docker exec tourCore2 yarp run --on /steamdeck --exit >> ~/r1-steamdeck-launcher/logs/close-tourCore2.txt &
sleep 1;
docker stop tourCore2  >> ~/r1-steamdeck-launcher/logs/close-tourCore2.txt
