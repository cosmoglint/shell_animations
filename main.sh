#!/bin/sh
echo "hi there!"

# echo $PATH
#
# H=5
# echo $H
read -p "which animation ? (dandelion or pianist)" fold

n=5
i=1

while :
do
  cat "${fold}/frame${i}"
  sleep 0.2
  clear
  let j="($i + 1) % 5"
  i="${j}"
done
