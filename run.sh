#!/bin/bash

cd ./build
cmake ..
make -j3
cd ..

GLOG_minloglevel=2 ./build/bin/dso_dataset_euroc \
files=/home/jg/Documents/Datasets/EuRoC/V1_01_easy/mav0 \
calib=/home/jg/Desktop/dso_my_workspace/configs/EuRoC/camera_left_rec.txt \
calibRight=/home/jg/Desktop/dso_my_workspace/configs/EuRoC/camera_right_rec.txt \
preset=0 \
mode=1
