#!/bin/bash
#usage: ./run.bash

dataname="corridor4_512_16"

# run dso
./build/bin/dso_dataset \
	files0=/home/bjergsen/data/tum/${dataname}/mav0/cam0/data \
	files1=/home/bjergsen/data/tum/${dataname}/mav0/cam1/data \
	vignette=/home/bjergsen/data/tum/${dataname}/dso/cam0/vignette.png \
	gamma=/home/bjergsen/data/tum/${dataname}/dso/cam0/pcalib.txt \
	calib0=/home/bjergsen/VI-Stereo-DSO/calib/tum/cam0.txt \
	calib1=/home/bjergsen/VI-Stereo-DSO/calib/tum/cam1.txt \
	T_stereo=/home/bjergsen/VI-Stereo-DSO/calib/tum/T_C0C1.txt \
	imu_info=/home/bjergsen/VI-Stereo-DSO/calib/tum/IMU_info.txt \
	groundtruth=/home/bjergsen/data/tum/${dataname}/dso/gt_imu.csv \
	imudata=/home/bjergsen/data/tum/${dataname}/dso/imu.txt \
	pic_timestamp=/home/bjergsen/data/tum/${dataname}/dso/cam0/times.txt \
	pic_timestamp1=/home/bjergsen/data/tum/${dataname}/dso/cam1/times.txt \
	preset=0 mode=1 \
	quiet=1 nomt=1 \
	savefile_tail=nt_${dataname}\
	use_stereo=1 \
	imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5