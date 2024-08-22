#!/bin/bash
echo -n "Earliest Class: "
sort -t ',' -k2 timetable.csv | head -n1 | awk -F',' '{print $4", "$2" on "$1}'

