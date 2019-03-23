#!/bin/bash
#author: ading mail:ading_007@sina.com
rate=$(df -h | grep sda5 | awk '{print $5}'| cut -d "%" -f 1)
if [ $rate -gt 80 ]
  then
      echo "Warning! /dev/sda5 is full."
  else
      echo "available,it is fine!"
fi
 
