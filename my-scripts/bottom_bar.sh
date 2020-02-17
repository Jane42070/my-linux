#!/usr/bin/env bash


# Dynamic Window Manager Status Bar Config
# 1.Show date time
# 2.Show battery status info
while true; do
		xsetroot -name " | Dis.$(df -h | awk '{ if ($6 == "/") print $4 }') | Mem.$(free -h | awk '(NR==2){ print $3 }') | Bat.$(acpi -b|awk '{print $4}') | Vol.$(amixer get Master|tail -n 1|awk '{print $5}'|tr -d '[]') | $(date '+%Y-%m-%d %R') "
		sleep 1m    # Update time every minute
done &
# # 3.Show audio info
# while true;
# do
#    if acpi -a | grep off-line > /dev/null; then
#    else
#        xsetroot -name "Bat. $( acpi -b | awk '{ print $4 " " $5 }' | tr -d ',' ) | Vol. $(amixer get Master | tail -1 | awk '{ print $5}' | tr -d '[]') | $(date +"%a, %b %d %R")"
#        xsetroot -name "Vol. $(amixer get Master | tail -1 | awk '{ print $5}' | tr -d '[]') | $(date +"%a, %b %d %R")"
#    fi
#    sleep 1s
# done &
