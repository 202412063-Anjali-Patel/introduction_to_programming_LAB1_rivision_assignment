#!/bin/bash
echo "Course | Number of Classes"
cut -d ',' -f2 timetable.csv | sort | uniq -c | sort -nr | head -n1 | awk '{print $2" | "$1}'
