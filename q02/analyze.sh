#!/bin/bash

#接收传入的CSV文件路径参数
CSV_FILE="$1"

#文件不存在判断：错误输出到stderr，返回非0退出码
if [ ! -f "${CSV_FILE}" ]
then
    echo "Error: file ${CSV_FILE} does not exist" >&2
    exit 1
fi

echo "==== Top2 path with most 5xx status ===="
#统计5xx：跳过表头，status以5开头；统计path频次；次数降序，次数相同path字典序，取前2
#-k1,1nr：第1列次数数字降序；-k2,2：次数相同时path字典升序
awk -F',' 'NR>1 && $4 ~ /^5/ {print $3}' "${CSV_FILE}" \
| sort \
| uniq -c \
| sort -k1,1nr -k2,2 \
| head -n 2

echo -e "\n==== Average latency_ms ===="
#计算全部数据行latency_ms平均值，跳过表头，保留两位小数
awk -F',' 'NR>1 {sum += $5; count++} END{printf("%.2f\n", sum/count)}' "${CSV_FILE}"

