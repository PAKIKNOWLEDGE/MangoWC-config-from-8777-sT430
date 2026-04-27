#!/bin/bash
# debug用
echo "脚本于 $(date) 执行了" >>/tmp/mango_debug.log

# 1. 启动输入法
fcitx5 -d --replace &

# 2. 启动壁纸 (去掉 exec，改为后台运行)
waypaper --restore &

# 3. 剪切板监听
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

# 4. 通知中心 (如果你换成了 swaync，记得改这里)
mako &

# 5. Waybar
pkill waybar
waybar &

# 6. 控制合盖锁屏
swayidle -w \
  before-sleep 'swaylock -c 120c12' &

# 7. SwayOSD 服务器 (一定要加 &，否则脚本会卡死在这里)
swayosd-server &
