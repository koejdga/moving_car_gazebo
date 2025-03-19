# Gazebo World with Moving Car Model

## Description

The Gazebo world includes a realistic car model in an agricultural environment. You can move the car using either buttons or a script, and the car's speed can also be controlled through the script.

This setup is designed to test UAV tracking algorithms, where the UAV tracks the car's movement.

## Prerequisites

1. Install Gazebo Harmonic on a computer

## Usage

1. Run in Terminal in the project folder `export GZ_SIM_RESOURCE_PATH=$GZ_SIM_RESOURCE_PATH:$(pwd)/models`
2. Run `gz sim -s agriculture_car_model.world`
3. Run `gz sim -g`
4. Add **Key Publisher** plugin in Gazebo GUI, in right upper corner
5. Press **R** to move a car, press **S** to stop the movement
6. Run `./scripts/move_in_circle.sh <number>` to move a car, where *<number>* is a car speed, standard speed = 2

## Models' origin

- car_012 - https://github.com/ayushgaud/gazebo_cars
- cpr_agriculture - https://github.com/leonhartyao/gazebo_models_worlds_collection
