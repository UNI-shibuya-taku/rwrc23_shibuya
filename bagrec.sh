#!/bin/bash

rosbag record /tf \
              /cloud \
              # /cloud/transformed \
              /sqlidar/odom \
              /odom/complement\
              /velodyne_packkets \
              /usb_cam/image_raw/compressed \
