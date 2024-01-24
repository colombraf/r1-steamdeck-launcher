date > ~/r1-steamdeck-launcher/logs/yarpview.txt
docker exec tourCore2 yarpview --name /steamdeck/view --w 940 --h 690 >> ~/r1-steamdeck-launcher/logs/yarpview.txt &
sleep 1;
docker exec tourCore2 yarp connect /cer/realsense/rgbImage:o /steamdeck/view >> ~/r1-steamdeck-launcher/logs/yarpview.txt &
