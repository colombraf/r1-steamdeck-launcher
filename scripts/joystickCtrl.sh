date > ~/r1-steamdeck-launcher/logs/joystickCtrl.txt

if docker exec tourCore2 pgrep -x joystickCtrl > /dev/null
then
	docker exec tourCore2 sudo pkill -f joystickCtrl
	echo "Found running joystickCtrl, killing it" >> ~/r1-steamdeck-launcher/logs/joystickCtrl.txt
	sleep 2
fi

docker exec tourCore2 joystickCtrl --from /home/user1/mnt/joystick_steamdeck.ini --GENERAL::outputPortName /joystickSteamdeck:o &
sleep 1;
docker exec tourCore2 yarp connect /joystickSteamdeck:o /baseControl/input/joystick/data:i tcp+recv.portmonitor+type.dll+file.joy2vel >> ~/r1-steamdeck-launcher/logs/joystickCtrl.txt &
