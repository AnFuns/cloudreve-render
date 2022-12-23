#!/bin/sh

## cloudreve配置
cat <<-EOF > /root/cloudreve/conf.ini
[System]
Mode = slave
Listen = :5212
[Slave]
Secret = Or6IZ5DoP0nEzw07ZrT4v4AK3eX8oAq0EBT6fCKZAH0Xv0bBSa0Bjwri321SWeBQ
[OptionOverwrite]
max_worker_num = 50
max_parallel_transfer = 10
chunk_retries = 10
EOF

## 运行
/root/aria2/trackers-list-aria2.sh
/root/cloudreve/cloudreve -c /root/cloudreve/conf.ini


