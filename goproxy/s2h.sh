#!/bin/bash
nohup proxy sps -S socks -T tcp -P 127.0.0.1:1080 -t tcp -p :18080 2>&1 1>/dev/null & 
