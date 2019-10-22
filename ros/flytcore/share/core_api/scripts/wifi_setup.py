#!/usr/bin/python

''' 
Config file for wifi chip on flytpod, using uart interface
author/maintainer: dhiraj@navstik.org
'''
#revision: checks to confirm shell access, arg for factory defaults, renew dhcp lease for ethernet interface, backup and restore config over failure to switch mode, 

import serial
ser = serial.Serial('/dev/ttySAC2', timeout=50)
ser.baudrate = 57600
import sys
import time
import argparse
import commands

## parsing command line arguments
parser = argparse.ArgumentParser(description='Process a float value.')
parser.add_argument('mode', metavar='conn_mode', type=str, help='supported modes are client, ap', default='ap', choices=['client', 'ap'])
parser.add_argument('ssid', metavar='wifi_ssid', type=str, help='ssid of wifi network', default='Flytpod_wifi')
parser.add_argument('passkey', metavar='pass_key', type=str, help='password', default='FlytPOD123')
parser.add_argument('authtype', metavar='auth_type', type=str, help='authentication type')
parser.add_argument('restore', metavar='fact_restore', type=str, help='restore factory settings', default='False', const='False', nargs='?')

args = parser.parse_args()


wifi_ssid = args.ssid
pass_key = args.passkey
auth_type = args.authtype
router_mode = args.mode
fact_restore = args.restore

try:
    ser.open()
except serial.SerialException as e:
    sys.stderr.write('Could not open serial port {}: {}\n'.format(ser.name, e))
    #sys.exit(1)

def confirm_access():
    '''make sure that we have access to shell, not to be used before the initialization'''
    ser.write(bytearray('\n'))
    #ser.write(bytearray('\n'))
    #ser.write(bytearray('\n'))
    #check if we have got the console	 
    time.sleep(1)
    ser.flushInput()
    ser.write(bytearray('\n'))
    time.sleep(1)
    bytes_to_read = ser.inWaiting()
    data = ser.read(bytes_to_read)
    console = filter(None, data.split('\n'))
    if console and console[1] == 'root@OpenWrt:/# ':
        return True
    return False

max_retries = 3
counter = 0
while counter < max_retries:
    access = confirm_access()
    counter += 1
    if access:
        break
    if counter >= max_retries:
        print "not able to reach router, UART connection broken"
        sys.exit(1)    

print "found openwrt shell"


def backup_config():
    '''backup the current config to restore on switching failure'''
    ser.write(bytearray('\n'))
    ser.write(bytearray('cp -r /etc/config /tmp'+'\n'))
    time.sleep(1)
    print "backed up current config"

def restore_backup():
    '''restore the last saved config and apply it, erase backup files'''
    ser.write(bytearray('\n'))
    ser.write(bytearray('mv /tmp/config/* /etc/config/'+'\n'))
    time.sleep(1)
    #ser.write(bytearray('\n'))
    #ser.write(bytearray('rm -r /usr/share/config '+'\n'))
    #time.sleep(1)
    
    #time.sleep(2)
    ser.write(bytearray('/etc/init.d/network restart'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/dnsmasq restart'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/firewall restart'+'\n'))
    print "restored flytpod to last config"

def erase_backup():
    '''erase the backup files after we're done with restore'''
    ser.write(bytearray('\n'))
    ser.write(bytearray('rm -r /tmp/config '+'\n'))
    time.sleep(1)
    print "backup files erased"

    
def restore_default():
    ''' restore factory default config'''
    ser.write(bytearray('firstboot'+'\n'))
    time.sleep(1)
    ser.write(bytearray('y'+'\n'))
    #ser.write(bytearray('reboot'+'\n'))
    #wait for half min to resume normal operation

def restore_factory():
    '''restore factory default config and apply'''
    ser.write(bytearray('\n'))
    restore_default()
    ser.write(bytearray('\n'))
    #time.sleep(2)
    ser.write(bytearray('/etc/init.d/network restart'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/dnsmasq restart'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/firewall restart'+'\n'))
      

#initialize terminal
def init_terminal():
    '''to intialize the sheell, can not be used before chip is up and runnng'''
    ser.write(bytearray('\n'))
    ser.write(bytearray('\n'))
    #TO-do this can verify if we really have a terminal
    #if confirm_access():
    #    return True
    #return False

import subprocess
from subprocess import Popen, PIPE

def reboot_flytpod():
    #ifconfig | awk '/encap:Ethernet/ { print $1}'
    my_cmd = "shutdown -r +1"   
    proc = subprocess.Popen(my_cmd, shell=True, stdout=subprocess.PIPE)

def renew_dhcp_lease(wait_time):
    # ask all interfaces to throw away their DHCP leases
    release = "dhclient -r"   
    proc = subprocess.Popen(release, shell=True, stdout=subprocess.PIPE)
    time.sleep(wait_time)
    getlease = "dhclient"   
    proc = subprocess.Popen(getlease, shell=True, stdout=subprocess.PIPE)
    #todo find new IP and print it
    #intf = "eth8"
    #intf_ip = commands.getoutput("ip address show dev " + intf)
    #print intf_ip
    #intf_ip = intf_ip.split()
    #print intf_ip
    #intf_ip = intf_ip[intf_ip.index('inet') + 1].split('/')[0]
    print "new IP assigned to FlytPOD"

def get_flytpod_mac():
    # get mac address of ethernet port in format: 00:1e:06:32:52:7f
    output = commands.getstatusoutput("ethtool -P $(ls /sys/class/net/ | grep -E 'enp|eth|wlp|wlan') | grep -Po 'Permanent address: \K.*$'")
    if output[0] == 0:
        return str(output[1])
    else:
        return None
    


    
########## Initialize ##################

init_terminal()
init_terminal()
 
############ factory reset the config #########

if fact_restore == 'True':
    print "restoring to factory defaults"
    restore_factory()
    time.sleep(2)
    renew_dhcp_lease(10)
    ser.close()
    sys.exit()

####### AP MODE #############

if router_mode == 'ap':
    print "Switching to AP mode"
    restore_default() #clean the slate to default mode
    time.sleep(2)
    init_terminal()
    init_terminal()
    ser.write(bytearray('uci set wireless.@wifi-iface[0].ssid="'+wifi_ssid+'"\n'))
    ser.write(bytearray('uci set wireless.radio0.channel=auto'+'\n'))
    if auth_type == 'None':
        ser.write(bytearray('uci delete wireless.@wifi-iface[0].encryption'+'\n'))
        ser.write(bytearray('uci delete wireless.@wifi-iface[0].key'+'\n'))
    else:
        ser.write(bytearray('uci set wireless.@wifi-iface[0].encryption='+auth_type+'\n'))
        ser.write(bytearray('uci set wireless.@wifi-iface[0].key="'+pass_key+'"\n'))
    ser.write(bytearray('uci commit wireless'+'\n'))
    #ser.write(bytearray('reboot'+'\n'))
    #restart dhcp, firewall, network service
    flytpod_mac=get_flytpod_mac()
    if flytpod_mac:
        ser.write(bytearray('uci add dhcp host'+'\n'))
        ser.write(bytearray('uci set dhcp.@host[0].ip="192.168.1.2"'+'\n'))
        ser.write(bytearray('uci set dhcp.@host[0].mac="'+flytpod_mac+'"'+'\n'))
        ser.write(bytearray('uci set dhcp.@host[0].name="flytpod"'+'\n'))
        ser.write(bytearray('uci commit dhcp'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/network restart'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/dnsmasq restart'+'\n'))
    time.sleep(2)
    ser.write(bytearray('/etc/init.d/firewall restart'+'\n'))
    ser.close()
    print "Done! FlytPod new wifi SSID", wifi_ssid
    #reboot_flytpod()
    renew_dhcp_lease(10)
    sys.exit(1)   



########## CLient Mode ################

backup_config() # take backup
 
print "Switching to client mode"
#### get clean slate
restore_default()
#time.sleep(2)
init_terminal()
########start wifi
ser.write(bytearray('uci set wireless.@wifi-device[0].disabled=0'+'\n'))
ser.write(bytearray('uci commit wireless'+'\n'))
ser.write(bytearray('wifi'+'\n'))

########create wwan interface
ser.write(bytearray('uci set network.wwan=interface'+'\n'))
ser.write(bytearray('uci set network.wwan.proto=dhcp'+'\n'))
ser.write(bytearray('uci set network.wwan.hostname=Flyt_wrt'+'\n'))
ser.write(bytearray('uci commit network'+'\n'))

########connect to wifi network
#TO-Do: add arguments 

ser.write(bytearray('uci set wireless.radio0.channel=auto'+'\n'))
ser.write(bytearray('uci set wireless.@wifi-iface[0].network=wwan'+'\n'))
ser.write(bytearray('uci set wireless.@wifi-iface[0].mode=sta'+'\n'))
ser.write(bytearray('uci set wireless.@wifi-iface[0].ssid="'+wifi_ssid+'"\n'))
if auth_type != 'None':
    ser.write(bytearray('uci set wireless.@wifi-iface[0].encryption='+auth_type+'\n'))
    ser.write(bytearray('uci set wireless.@wifi-iface[0].key="'+pass_key+'"\n'))
else:
    ser.write(bytearray('uci delete wireless.@wifi-iface[0].encryption'+'\n'))
    ser.write(bytearray('uci delete wireless.@wifi-iface[0].key'+'\n'))
ser.write(bytearray('uci commit wireless'+'\n'))

######## restart wifi using#####
ser.write(bytearray('wifi down; wifi'+'\n'))
time.sleep(10)
######## enable and configure relay
ser.write(bytearray('/etc/init.d/relayd enable'+'\n'))
ser.write(bytearray('uci set network.stabridge=interface'+'\n'))
ser.write(bytearray('uci set network.stabridge.proto=relay'+'\n'))
ser.write(bytearray('uci set network.stabridge.network="lan wwan"'+'\n'))
ser.write(bytearray("uci commit network"+"\n"))
#time.sleep(10)

wifi_gateway = "0.0.0.0"

def get_gateway():
    ser.write(bytearray("IP1=$(route | awk '/default/ {print $2 }')"+"\n"))
    time.sleep(1)
    ser.flushInput()
    ser.write(bytearray('echo $IP1'+'\n'))
    time.sleep(1)
    bytes_to_read = ser.inWaiting()
    data = ser.read(bytes_to_read)
    content = filter(None, data.split('\n'))
    gateway = content[1]
    return gateway    

ip_field = 0
max_retries = 10
rc=0

while rc < max_retries :
    print "connecting to wifi network", rc + 1
    rc += 1
    ip_field = get_gateway()
    if len(ip_field) <= 2:
        if rc >= max_retries:
            print "exit!, Failed to conect network"
            restore_backup() # restore the last saved config
            renew_dhcp_lease(10)
            time.sleep(3)  
            ser.close()
            sys.exit(1)
        time.sleep(3)
        continue    
    else:
        print "gotcha! connected to network" 
        break
    

wifi_gateway = ip_field[:-1]
    #print wifi_gateway, 'is the default gateway'

ser.write(bytearray('uci set network.lan.gateway='+wifi_gateway+'\n'))
ser.write(bytearray('uci set network.lan.dns='+wifi_gateway+'\n'))
ser.write(bytearray('uci commit network'+'\n'))

#disable local dhcp server
ser.write(bytearray('uci set dhcp.lan.ignore=1'+' \n'))
ser.write(bytearray('uci commit dhcp'+'\n'))

#configure firewall zone
ser.write(bytearray('uci set firewall.@zone[0].forward=ACCEPT'+' \n'))
ser.write(bytearray('uci set firewall.@zone[0].network="lan wwan"'+'\n'))
ser.write(bytearray('uci commit firewall'+'\n'))


ser.write(bytearray('/etc/init.d/dnsmasq restart'+' \n'))
ser.write(bytearray('/etc/init.d/firewall restart'+'\n'))
#ser.write(bytearray('wifi down; wifi'+'\n'))
time.sleep(1)
ser.write(bytearray('uci set network.lan.ipaddr=10.0.0.1'+'\n'))
ser.write(bytearray('uci commit network'+'\n'))

##### automate using hotplug
time.sleep(1)
ser.write(bytearray('cat > /etc/hotplug.d/iface/30-relay'+'\n'))
ser.write(bytearray('#!/bin/sh'+'\n'))
ser.write(bytearray('/etc/init.d/relayd enabled && /etc/init.d/relayd start'+'\n'))
ser.write(bytearray('# enable access from client network'+'\n'))
ser.write(bytearray('[ "$INTERFACE" = wwan ] || exit 0'+'\n'))
ser.write(bytearray('[ "$ACTION" = ifup -o "$ACTION" = ifupdate ] || exit 0'+'\n'))
ser.write(bytearray('\n'))
ser.write(bytearray('. /lib/functions/network.sh; network_get_ipaddr ip wwan;'+'\n'))
ser.write(bytearray('\n'))
ser.write(bytearray('uci set network.stabridge.ipaddr=$ip'+'\n'))
ser.write(bytearray('uci commit network'+'\n'))
time.sleep(1)
ser.write('\x03')
ser.write(bytearray('\n'))

erase_backup() #cleanup backup files which are no longer needed
ser.write(bytearray('reboot'+'\n'))
print "successfully connected to client"
renew_dhcp_lease(25)
#reboot_flytpod()
ser.close()

