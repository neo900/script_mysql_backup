#!/bin/bash

timestamp=`date +%F`

user=""
pass=""

log="/home/dump/mysql_backup/backup.log"
DIR="/home/dump/mysql_backup/db_backup"

mkdir $DIR/$timestamp
echo Backup start - `date` >> $log

for i in `cat /home/dump/mysql_backup/db_name`
do
        echo '***' Backup $i start - `date` >> $log
        mysqldump -u$user -p$pass -B $i > $DIR/$timestamp/$i.sql
        echo '***' Backup $i complete - `date` >> $log
done

echo Backup complete - `date`>> $log
