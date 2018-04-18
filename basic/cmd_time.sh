#!/bin/bash
#caculate command excute time

start=`date +%s`
cmd=$@
$cmd
end=`date +%s`

usedtime=$((end-start))
echo "command total used time ${usedtime}s"
