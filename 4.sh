#!/bin/bash
read -p "Enter the room number: " room
echo "Day | Time | Course | Instructor"
grep "$room" timetable.csv | cut -d ',' -f1-4 | sort
