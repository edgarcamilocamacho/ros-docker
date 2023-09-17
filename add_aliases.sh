#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "alias ros_create=${SCRIPT_DIR}/create" >> ~/.bashrc
echo "alias ros_bash=${SCRIPT_DIR}/bash" >> ~/.bashrc
echo "alias ros_sudo_bash=${SCRIPT_DIR}/sudo_bash" >> ~/.bashrc
