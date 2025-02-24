#!/bin/bash
#usage: ./run.bash

dataname="00"

# run dso
./build/bin/dso_dataset \
	files0=/home/bjergsen/data/kitti/${dataname}/image_0 \
	files1=/home/bjergsen/data/euroc/${dataname}/image_1 \
	calib0=/home/bjergsen/VI-Stereo-DSO/calib/euroc/cam0.txt \
	calib1=/home/bjergsen/VI-Stereo-DSO/calib/euroc/cam1.txt \
	T_stereo=/home/bjergsen/VI-Stereo-DSO/calib/euroc/T_C0C1.txt \
	imu_info=/home/bjergsen/VI-Stereo-DSO/calib/euroc/IMU_info.txt \
	groundtruth=/home/bjergsen/data/euroc/${dataname}/mav0/state_groundtruth_estimate0/data.csv \
	imudata=/home/bjergsen/data/euroc/${dataname}/mav0/imu0/data.csv \
	pic_timestamp=/home/bjergsen/data/euroc/${dataname}/mav0/cam0/data.csv \
	pic_timestamp1=/home/bjergsen/data/euroc/${dataname}/mav0/cam1/data.csv \
	preset=0 mode=1 \
	quiet=1 nomt=1 \
	savefile_tail=nt_${dataname}\
	use_stereo=1\
	imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5