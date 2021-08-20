#!/bin/bash  
# Comments to support LSB init script conventions
### BEGIN INIT INFO
# Provides: Tomcat
# Required-Start: $local_fs $network $remote_fs
# Should-Start: ypbind nscd ldap ntpd xntpd
# Required-Stop: $local_fs $network $remote_fs
# Default-Start:  2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: start, stop and restart tomcat
# Description: Tomcat service.
### END INIT INFO

case $1 in  
start)  
sh install_path/startup.sh  
;;   
stop)     
sh install_path/shutdown.sh  
;;   
restart)  
sh install_path/shutdown.sh  
sh install_path/startup.sh  
;;   
esac      
exit 0