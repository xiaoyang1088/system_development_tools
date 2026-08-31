#!/bin/bash

# $1 获取传入的第一个参数
filename="$1"

# 判断是否为普通文件
if [ -f "$filename" ]; then
    echo "文件$filename 存在。"
else
    echo "文件$filename 不存在。"
fi
