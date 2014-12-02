#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo 'Error!!! This script should be runed as root!' 1>&2
  exit 1
fi

useradd -m -s /bin/bash dump
cd /home/dump
mkdir mysql_backup
cd /home/dump/mysql_backup

touch backup.log
touch db_name
mkdir db_backup

#git clone https://github.com/neo900/script_mysql_backup.git


