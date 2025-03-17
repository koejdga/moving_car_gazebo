#!/bin/bash

# check if the first argument is either an integer or a double
if [[ $1 =~ ^-?[0-9]+$ ]] || [[ $1 =~ ^-?[0-9]*\.[0-9]+$ ]]; then
  angular_value=$(echo "$1 / 5" | bc -l)
  gz topic -t "/cmd_vel" -m gz.msgs.Twist -p "linear: {x: $1}, angular: {z: $angular_value}"
else
  echo "Usage: ./move_in_circle.sh <number>, where <number> is speed, standard = 2"
fi
