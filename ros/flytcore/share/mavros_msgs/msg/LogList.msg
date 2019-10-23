# Base message format for every entry of log list
# sbc_status -> 0 for not available on SBC, 1 for available

uint16 id
string filename
string autopilot
string date
uint32 time
uint32 size
uint8 sbc_status
