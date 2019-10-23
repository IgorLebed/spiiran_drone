#include <ros/ros.h>
#include <sensor_msgs/BatteryState.h>

//sensor_msgs::BatteryState battery_date;

void chatterCallback(const sensor_msgs::BatteryStateConstPtr &battery)
{
  std::cout << "\nVoltage \tcurrent";
  std::cout << "\n" << battery->voltage << "\t\t" << battery->current;

  float x = battery->voltage;
  if (x < 20){
    ROS_INFO("FAIL BATTERY");
  }

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener_battery");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/flytsim/mavros/battery", 1000, chatterCallback);
  ros::spin();
  /*
  if (chatterCallback.battery->voltage < 20)
  {
    ROS_INFO("Fail");
    return 1;
  }
  */
  return 0;
}
