#!/usr/bin/python
# -*- coding: utf-8 -*-

import csv
# 输入文件路径和输出文件路径
input_csv_file = '/home/bjergsen/data/euroc/MH_04_difficult/mav0/cam0/data.csv'
output_txt_file = '/home/bjergsen/data/euroc/MH_04_difficult/mav0/cam0/times.txt'

# 打开CSV文件进行读取
with open(input_csv_file, 'r') as csv_file:
    # 使用csv.reader读取CSV文件
    csv_reader = csv.reader(csv_file)

    # 打开输出文件进行写入
    with open(output_txt_file, 'w') as txt_file:
        # 使用csv.writer写入文本文件，以空格分隔
        txt_writer = csv.writer(txt_file, delimiter=' ')

        next(csv_reader)
        # 遍历CSV文件的每一行
        for row in csv_reader:
            # 获取时间戳和图片名
            timestamp = float(row[0]) / 1e9
            image_name = row[1]

            # 提取图片名的前缀（去除.png后缀）
            image_prefix = image_name.split('.')[0]

            # 将数据写入times.txt文件
            txt_writer.writerow([image_prefix, timestamp])

print("Conversion completed. Result written to {}".format(output_txt_file))


