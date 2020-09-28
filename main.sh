#!/bin/sh
echo "hi there!"

# echo $PATH
#
# H=5
# echo $H
read -p "which animation ? (dandelion or pianist or space)" fold


n=$(ls $fold | wc -l)
i=1
# echo $n

while :
do
  cat "${fold}/frame${i}"
  sleep 0.1
  clear
  let j="($i + 1) % $n"
  i="${j}"
done
