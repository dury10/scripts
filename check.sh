#!/bin/bash
#script by dury10 to check the cpu temp and the working cpu freq



cpu_freq=/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
cpu_temp=/sys/class/thermal/thermal_zone0/temp

      clk=$(cat $cpu_freq)
      cpu=$(cat $cpu_temp)
      echo  -e "\e[1;34m" $(($clk/1000))" Mhz \e[0m /" "\e[1;31m" $(($cpu/1000))" C \e[0m"

echo -e  "\e[1;32m uptime is"
uptime
echo -e "\e[1;32m  \e[0m"

