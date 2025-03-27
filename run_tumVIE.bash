#!/bin/bash
#usage: ./run.bash

dataname="running-easy-vi_gt_data"

# run dso
./build/bin/dso_dataset \
	files0=/home/bjergsen/data/tum/${dataname}/left_images \
	files1=/home/bjergsen/data/tum/${dataname}/right_images \
	vignette=/home/bjergsen/data/tum/${dataname}/vignette_0.png \
	calib0=/home/bjergsen/VI-Stereo-DSO/calib/tumVIE/cam0.txt \
	calib1=/home/bjergsen/VI-Stereo-DSO/calib/tumVIE/cam1.txt \
	T_stereo=/home/bjergsen/VI-Stereo-DSO/calib/tum/T_C0C1.txt \
	imu_info=/home/bjergsen/VI-Stereo-DSO/calib/tum/IMU_info.txt \
	groundtruth=/home/bjergsen/data/tum/${dataname}/mocap_data.txt \
	imudata=/home/bjergsen/data/tum/${dataname}/imu_data.txt \
	pic_timestamp=/home/bjergsen/data/tum/${dataname}/left_images/image_timestamps_left.txt \
	pic_timestamp1=/home/bjergsen/data/tum/${dataname}/right_images/image_timestamps_right.txt \
	preset=0 mode=1 \
	quiet=1 nomt=1 \
	savefile_tail=nt_${dataname}\
	use_stereo=1 \
	imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5