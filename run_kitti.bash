#!/bin/bash
#usage: ./run.bash

dataname="2011_09_30_drive_0016_sync"

# run dso
./build/bin/dso_dataset \
	files0=/home/bjergsen/data/kitti/${dataname}/image_02/data \
	files1=/home/bjergsen/data/kitti/${dataname}/image_03/data \
	calib0=/home/bjergsen/VI-Stereo-DSO/calib/kitti/cam0.txt \
	calib1=/home/bjergsen/VI-Stereo-DSO/calib/kitti/cam1.txt \
	T_stereo=/home/bjergsen/VI-Stereo-DSO/calib/kitti/T_C0C1.txt \
	imu_info=/home/bjergsen/VI-Stereo-DSO/calib/kitti/IMU_info.txt \
	imudata=/home/bjergsen/data/kitti/${dataname}/oxts/data \
	pic_timestamp=/home/bjergsen/data/kitti/${dataname}/image_02/timestamps.txt \
	pic_timestamp1=/home/bjergsen/data/kitti/${dataname}/image_03/timestamps.txt \
	preset=0 mode=1 \
	quiet=1 nomt=1 \
	savefile_tail=nt_${dataname}\
	use_stereo=1 \
	imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5