#!/bin/bash

# 指定图片目录
IMAGE_DIR="/home/LiHaoyuan/wall_paper/"

# 预设的过渡效果列表
TRANSITION_TYPES=("grow" "outer")

# 随机选择一张图片
RANDOM_IMAGE=$(find "$IMAGE_DIR" -type f | shuf -n 1)

# 随机选择一个过渡效果
RANDOM_TRANSITION=${TRANSITION_TYPES[$RANDOM % ${#TRANSITION_TYPES[@]}]}

# 随机生成 --transition-pos 的值（格式为 "x,y"，x 和 y 在 0 到 1 之间）
RANDOM_POS_X=$(awk -v min=0 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')
RANDOM_POS_Y=$(awk -v min=0 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')
RANDOM_POS="${RANDOM_POS_X},${RANDOM_POS_Y}"

# 使用 swww 设置壁纸
swww img --transition-type "$RANDOM_TRANSITION" --transition-pos "$RANDOM_POS" --transition-fps 60 --transition-duration 3 "$RANDOM_IMAGE"

# 发送通知
notify-send "Wallpaper Changed" \
  "New Wallpaper: $(basename "$RANDOM_IMAGE")\n"

# export CURRENT_WALL_PAPER=$RANDOM_IMAGE
