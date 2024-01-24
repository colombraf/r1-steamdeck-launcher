date > ~/r1-steamdeck-launcher/logs/rviz2.txt
docker exec --workdir /home/user1/tour-guide-robot/app/navigation2/conf --env-file .env tourCore2 /opt/ros/iron/bin/rviz2  -d r1_visualizer.rviz >> ~/r1-steamdeck-launcher/logs/rviz2.txt &
