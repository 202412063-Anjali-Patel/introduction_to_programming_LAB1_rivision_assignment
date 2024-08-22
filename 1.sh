#!/bin/bash

echo "Instructor | Number of Classes"

cut -d ',' -f4 timetable.csv | sort | uniq -c | awk '{print $2" | "$1}'
