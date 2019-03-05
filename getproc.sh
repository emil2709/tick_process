#!/bin/bash

taskset -c $2 ./$1 &

pid=$!

get_uptime() {
	cat /proc/uptime | awk '{print $1}'
}

get_tick_start() {
	cat /proc/$pid/stat | awk '{print $22}'
}

get_time_used() {
	cat /proc/$pid/stat | awk '{print $14, $15, $16, $17}'
}

while [ -e /proc/$pid ];
do
	uptime=$( get_uptime )
	tick_start=$( get_tick_start )
	time_used=$( get_time_used )
	var=$(echo "scale=0; $uptime * 100" | bc)
	var=${var%.*}

	ticks_used=0
	for i in $(eval echo $time_used); do ticks_used=$((ticks_used+i)); done

	tick=$(( var - tick_start ))

	if [ "$tick" -eq 0 ];
	then
		utilization=0
	else
		utilization=$(bc <<< "scale=4; $ticks_used/$tick")
	fi
	date=$( date +%s%3N )

	pid_data="$pid $time_used $tick $utilization $date"

	echo "$pid_data" >> $pid-$1.txt 
	sleep 0.05
done
echo $pid_data
