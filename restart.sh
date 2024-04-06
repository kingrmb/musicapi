#!/bin/bash

export LANG=en_US.UTF-8

app="musicapi"
cd /opt/soft/${app}/
pids=`ps -ef|grep 'main.py'|grep -v grep|awk '{print $2}'`


if [ "${pids}" = "" ]; then
  echo "${app} not running......."
else
  for pid in ${pids}
  do
    kill -9 $pid
    echo "${app} pid $pid killed"
  done
fi


nohup python3.9 main.py > nohup.out 2>&1 &
echo "${app} start success!!!"


tail -99f nohup.out