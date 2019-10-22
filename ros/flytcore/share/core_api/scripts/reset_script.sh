#!/bin/bash -i

rcS_gazebo_iris_cloud_path=$(rospack find sitl_gazebo)/posix/rcS_gazebo_iris_cloud
model_sdf_path=$(rospack find sitl_gazebo)/models/iris/iris.sdf
global_namespace_path=$(rospack find core_api)/param_files/global_namespace.yaml
rosdistro=`rosversion -d`

cp ${rcS_gazebo_iris_cloud_path}-bak ${rcS_gazebo_iris_cloud_path}
cp ${model_sdf_path}-bak ${model_sdf_path}
cp ${global_namespace_path}-bak ${global_namespace_path}

exit 0