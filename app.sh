#!/bin/sh
today=`date "+%Y-%m-%d %H:%M:%S"`
echo "${today} Hello, world from shell" >> cron.log 2>&1
