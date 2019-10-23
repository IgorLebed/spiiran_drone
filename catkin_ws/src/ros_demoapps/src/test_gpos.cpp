// %Tag(FULLTEXT)%
#include <ros/ros.h>
//#include "std_msgs/String.h"
#include <sensor_msgs/NavSatFix.h>

sensor_msgs::NavSatFix gpos_data;

// %Tag(CALLBACK)%
void chatterCallback(const sensor_msgs::NavSatFixConstPtr &gpos)
{
  std::cout << "\nlatitude \taltitude";
  std::cout << "\n" << gpos->latitude << "\t\t" << gpos->altitude;
  //ROS_INFO("I heard: [%s]", msg->data.c_str());
  //ROS_INFO("I heard: [%d]", gpos->latitude);
}
// %EndTag(CALLBACK)%

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
// %Tag(SUBSCRIBER)%
  ros::Subscriber sub = n.subscribe("/flytsim/mavros/global_position/global", 1000, chatterCallback);
// %EndTag(SUBSCRIBER)%
  ros::spin();
  return 0;
}
// %EndTag(FULLTEXT)%
