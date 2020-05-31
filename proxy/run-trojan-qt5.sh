#!/bin/sh
export LANG=zh_CN.gbk
cd `dirname $0`/Trojan-Qt5-Linux
nohup ./Trojan-Qt5-Linux.AppImage 2>&1 1>/dev/null &
