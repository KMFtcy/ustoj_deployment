#!/bin/bash
mv /etc/apt/sources.list /etc/apt/sources.list.bak
SYS_VERSION=$(lsb_release -c | grep -o "\s.*")
cat >> /etc/apt/sources.list << EOF
deb http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-backports main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ $SYS_VERSION-proposed main restricted universe multiverse
EOF