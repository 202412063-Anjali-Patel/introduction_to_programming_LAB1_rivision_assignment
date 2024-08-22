#!/bin/bash
read -p "Enter the time slot (e.g., 11:00-12:00): " timeslot
echo -n "Available Rooms: "
grep -v "$timeslot" timetable.csv | cut -d ',' -f3 | sort | uniq
