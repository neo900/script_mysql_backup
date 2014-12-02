#!/bin/bash

DIR="/home/dump/mysql_backup/db_backup"

for i in `find $DIR -name "20*" -type d | sed 's/\/home\/dump\/mysql_backup\/db_backup\///g'`
do
        tar -czf $DIR/$i.gz $DIR/$i 2> /dev/null
        rm -rf $DIR/$i 2> /dev/null
done

