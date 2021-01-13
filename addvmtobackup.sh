#!/bin/bash


export IDBKP=$(pvesh get /cluster/backup --noheader --noborder)
pvesh get /cluster/backup/$IDBKP/ --noborder | grep vmid | cut -d" " -f14
export LISTAVMS=$(pvesh get /cluster/backup/$IDBKP/ --noborder | grep vmid | cut -d" " -f14)
export VMADD=110
echo $LISTAVMS | sed '/:[0-9]*$/ ! s/$/,'$1'/' > /tmp/VMS
pvesh set /cluster/backup/$IDBKP --starttime 20:00 --vmid `cat /tmp/VMS`
