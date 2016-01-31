#!/bin/bash

xterm -hold -e "roscore" &
sleep 15
xterm -hold -e "rosrun hokuyo_node hokuyo_node" &
sleep 15
xterm -hold -e "roslaunch ~/dev/catkin_ws/src/my_tf_configuration/launch/robot_tf_publisher.launch " &
sleep 15
xterm -hold -e "rosrun my_odom_configuration odometry_publisher" &
sleep 15
xterm -hold -e "roslaunch ~/dev/catkin_ws/src/my_robot_name_2dnav/launch/move_base.launch" &
sleep 15
xterm -hold -e "rosrun rviz rviz" &
sleep 15
xterm -hold -e "rosnode list" &

exit 0
