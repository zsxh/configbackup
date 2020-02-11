#!/bin/sh
cd $HOME/Code/workspace/proxy
./trojan/trojan -c config.json -l trojan.log &
