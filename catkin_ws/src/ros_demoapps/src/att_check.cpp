#include <ros/ros.h>
#include <geometry_msgs/TwistStamped.h>

//std::string global_namespace;

geometry_msgs::TwistStamped geom_msg;

//ros::Subscriber geom_sub;

void attCallback(const geometry_msgs::TwistStampedConstPtr &att)
{
        std::cout << "\nroll \t\tpitch \t\tyaw \t\trollspeed \tpitchspeed \tyawspeed";
        std::cout << "\n" << att->twist.linear.x << "\t" << att->twist.linear.y << "\t" << att->twist.linear.z;
        std::cout << "\t" << att->twist.angular.x << "\t" << att->twist.angular.y << "\t" << att->twist.angular.z;
        fflush(stdout);
}

int main(int argc, char **argv)
{
        ros::init(argc, argv, "att_euler_cb");
        ros::NodeHandle nh;

        ros::Subscriber sub = nh.subscribe("/flytsim/mavros/imu/data_euler", 1, attCallback);
        ros::spin();
        return 0;
}
