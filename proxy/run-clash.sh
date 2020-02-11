#!/bin/sh
cd $HOME/Code/workspace/proxy/clash
./clash -d . 2>&1 1>clash.log &
