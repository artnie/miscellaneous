##################
# Documentation: #
## Find out your Lan and WiFi interface names via 'ifconfig' or 'ip a'.
### LAN_IF_NAME -> Lan interface name
### WIFI_IF_NAME -> WiFi interface name
## Move this script to somewhere convenient, like ~/.ros/ and include it in ~/.bashrc with this line:
### source ~/.ros/.ros_ip_env.bash
##################

LAN_IF_NAME=enp1s0f1
WIFI_IF_NAME=wlp2s0

## Set ROS vars dynamically, prioritize LAN IP
LAN_IP=$(ifconfig $LAN_IF_NAME | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
WIFI_IP=$(ifconfig $WIFI_IF_NAME | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*')
if [ ! -z "$LAN_IP" ]; then
	export ROS_IP=$LAN_IP
	export ROS_HOSTNAME=$LAN_IP
elif [ ! -z "$WIFI_IP" ]; then
	export ROS_IP=$WIFI_IP
	export ROS_HOSTNAME=$WIFI_IP
else
	export ROS_IP='127.0.0.1'
	export ROS_HOSTNAME='127.0.0.1'
fi

export ROS_MASTER_URI='http://'$ROS_IP':11311'


