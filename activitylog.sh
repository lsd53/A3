#! /bin/bash
awk '/work/{print}' activity_log.csv | awk '{FS=","}{print $3}' | awk '{FS=":"}{print $1}' > work.txt
awk '/run/{print}' activity_log.csv | awk '{FS=","}{print $3}' | awk '{FS=":"}{print $1}' > run.txt
awk '/mkt/{print}' activity_log.csv | awk '{FS=","}{print $3}' | awk '{FS=":"}{print $1}' > mkt.txt

worktime = 0;
line = 1;
while read p; do
  if($(echo $(($i % 2)) -eq "1"))
done < work.txt

while read p; do
  echo $p
done < work.txt

while read p; do
  echo $p
done < work.txt