#!/bin/bash

HOME="/home/gneareth"


echo Your APP MASSA in ${HOME}

if [ $UID -eq 0 ]
then
  read -p "Input your key Node : "  data
  length_count=`echo ${data} | wc -m`
  if [ $length_count == 65 ]
  then
     echo "${data}" | tee ${HOME}/MASSA/massa-node/massa-storage/vol-01/dd/geth/nodekey
     docker restart massa-node-backend
  else
    echo "length not 64 character"
  fi
else
  echo "Make sure Running With ROOT"
fi
