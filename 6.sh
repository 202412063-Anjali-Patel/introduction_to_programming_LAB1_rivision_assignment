#!/bin/bash
echo "Instructor | Total Hours"
awk -F',' '{split($2,a,"-"); split(a[1],start,":"); split(a[2],end,":"); hours=(end[1]-start[1])+(end[2]-start[2])/60; print $4, hours}' timetable.csv | 
awk '{total[$1]+=$2} END {for (i in total) print i" | "total[i]}'
