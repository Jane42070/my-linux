#!/bin/bash
# Dynamic Window Manager Status Bar Config
# 1.Show date time
# 2.Show battery status info
while true;
do
	percentage1=`acpi -b|awk '{print $4}'`
	bat=`echo "${percentage1//\,}"`
	battime=`acpi -b|awk '{print $5}'`
	mem=`free -h|awk 'NR==2{print $3}'`
	acpi -a | grep "off-line" > /dev/null
	if [ $? -eq 0 ]; then
		charging=" [$battime｜$bat]";
	else
		charging=" [$battime｜$bat]";
	fi
	xsetroot -name "|   $(df -h | awk '{ if ($6 == "/") print $4 }') |   $mem | $charging |   $(amixer get Master|tail -n 1|awk '{print $5}'|tr -d '[]') | $(date '+%Y-%m-%d %R ') "
	# Update time
	sleep 1s
done &
