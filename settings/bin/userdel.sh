#!/bin/bash
for i in $(seq 50 80)
do
    userdel -r "user$i"
done
