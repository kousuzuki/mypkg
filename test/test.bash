#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ko Suzuki 　　　　　
# SPDX-License-Identifier: BSD-3-Clause

dir=~
[ "$1" != "" ] && dir="$1"

cd $dir/ros2_ws
colcon build
source $dir/.bashrc
timeout 20 ros2 launch mypkg talk_listen.launch.py > /tmp/mypkg.log


for ((i=0; i<=15; i++)); do
	if ! grep -q "Listen: $i" /tmp/mypkg.log; then
	    echo "Test Failed: Expected output 'Listen: $i' not found."
	    exit 1
	 fi
 done	 

 echo "The count has reached 15"


if grep -q 'Listen: 16' /tmp/mypkg.log; then
    echo "Test Failed: Expected output not found."
    exit 1
else
    echo "Test Passed: Expected output  found."
fi
