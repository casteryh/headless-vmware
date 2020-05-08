#!/usr/bin/env zsh
local file_given
file_given=false
if [ -z $2 ]
  then
    vmfile=$2
  else
    vmfile=${VMFILE}
fi
function check_file {
  if [ -z ${vmfile} ]
    then
      echo "Usage: either pass the path to .vmx file as an argument or set the environment variable VMFILE"
      exit 1
  fi
}
case $1 in
  start)
    check_file
    vmrun start ${vmfile} nogui
    ;;
  stop)
    check_file
    vmrun stop ${vmfile} nogui
    ;;
  suspend)
    check_file
    vmrun suspend ${vmfile} nogui
    ;;
  pause)
    check_file
    vmrun pause ${vmfile} nogui
    ;;
  unpause)
    check_file
    vmrun unpause ${vmfile} nogui
    ;;
  reset)
    check_file
    vmrun reset ${vmfile} nogui
    ;;
  list)
    if [ -z $2 ]
      then
        vmrun list
      else
        vmrun list | grep $2
    fi
    ;;
  *)
    echo "Usage: possible options are: start | stop | suspend | pause | unpause | reset | status"
    exit 1
esac