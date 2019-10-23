# Current autopilot state
#
# Known modes listed here:
# http://wiki.ros.org/mavros/CustomModes

std_msgs/Header header
bool connected
bool armed
bool guided
string mode
uint8 mav_type
uint8 mav_autopilot
uint8 mav_sys_status
