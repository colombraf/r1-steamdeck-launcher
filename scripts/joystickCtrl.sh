date > ~/r1-steamdeck-launcher/logs/joystickCtrl.txt
docker exec tourCore2 joystickCtrl --from /home/user1/mnt/joystick_steamdeck.ini --GENERAL::outputPortName /joystickSteamdeck:o &
sleep 1;
docker exec tourCore2 yarp connect /joystickSteamdeck:o /baseControl/input/joystick/data:i tcp+recv.portmonitor+type.dll+file.joy2vel >> ~/r1-steamdeck-launcher/logs/joystickCtrl.txt &
