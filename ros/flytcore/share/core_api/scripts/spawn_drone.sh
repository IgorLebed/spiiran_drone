#!/bin/bash -i

if [ $# -lt 7 ]
	then
	echo "USAGE: [ERROR] This script expects following parameters in respective order: UDP-PORT1 UDP-PORT2 UDP-PORT3 position_x position_y username modelname"
		exit 1
fi

UDP_PORT_1=$1
UDP_PORT_2=$2
UDP_PORT_3=$3
pos_x=$4
pos_y=$5
username=$6
modelname=$7

rcS_gazebo_iris_cloud_path=$(rospack find sitl_gazebo)/posix/rcS_gazebo_iris_cloud
model_sdf_path=$(rospack find sitl_gazebo)/models/iris/iris.sdf
global_namespace_path=$(rospack find core_api)/param_files/global_namespace.yaml
rosdistro=`rosversion -d`

cp ${rcS_gazebo_iris_cloud_path}-bak ${rcS_gazebo_iris_cloud_path}
cp ${model_sdf_path}-bak ${model_sdf_path}
cp ${global_namespace_path}-bak ${global_namespace_path}

sed -i "s/_SIMPORT_/$UDP_PORT_1/g" ${rcS_gazebo_iris_cloud_path}
sed -i "s/_MAVPORT_/$UDP_PORT_2/g" ${rcS_gazebo_iris_cloud_path}
sed -i "s/_MAVOPORT_/$UDP_PORT_3/g" ${rcS_gazebo_iris_cloud_path}
sed -i "s|port>14560</mavlink_|port>$UDP_PORT_1</mavlink_|g" ${model_sdf_path}
sed -i "s/flytsim/$username/g" ${global_namespace_path}

sudo ln -s /opt/ros/$rosdistro/bin/roslaunch /opt/ros/$rosdistro/bin/$username"launch"
echo "Spawning new drone with username as $username and drone name as $modelname"
$(rospack find core_api)/scripts/start_flytSim_cloud.sh $UDP_PORT_2 $UDP_PORT_3 $pos_x $pos_y $username $modelname

exit 0