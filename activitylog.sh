#! /bin/bash


awk '/work/{print}' activity_log.csv | awk 'BEGIN {FS=","}{print $3}' | awk 'BEGIN {FS=":"}{print $1}' > work.txt
awk '/run/{print}' activity_log.csv | awk 'BEGIN {FS=","}{print $3}' | awk 'BEGIN {FS=":"}{print $1}' > run.txt
awk '/farmers/{print}' activity_log.csv | awk 'BEGIN {FS=","}{print $3}' | awk 'BEGIN {FS=":"}{print $1}' > mkt.txt

echo "work time is:"
awk '{ 
 if(NR%2 == 1) 
 {
  sum_e = sum_e + $0
 } 
 else 
 {
  sum_o = sum_o + $0
 }
 total = sum_o - sum_e
      } 
      END { print total }' work.txt

echo "run time is:"
awk '{ 
 if(NR%2 == 1) 
 {
  sum_e = sum_e + $0
 } 
 else 
 {
  sum_o = sum_o + $0
 }
 total = sum_o - sum_e
      } 
      END { print total }' run.txt

echo "farmers market time is:"
awk '{ 
 if(NR%2 == 1) 
 {
  sum_e = sum_e + $0
 } 
 else 
 {
  sum_o = sum_o + $0
 }
 total = sum_o - sum_e
      } 
      END { print total }' mkt.txt

rm work.txt
rm run.txt
rm mkt.txt

