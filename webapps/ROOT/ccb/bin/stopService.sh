#!/bin/bash
keyWord="Dfile.encoding=GBK com.ccb.wlpt.main.Router ../conf/server.properties"
findPid=`ps -ef|grep java|grep "$keyWord"|grep -v grep|awk '{print $2}'`

if [ "$findPid" != "" ];then
  kill -9 "$findPid"
  if [ $? -eq 0 ]; then
 	 echo "Close the service successfully."
  else
  	echo "Close the service failed."
  fi
else
  echo "Service is not running."
fi
