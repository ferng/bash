#!/usr/bin/bash

for arg in $@ 
do
  echo 'argument: ' $arg
done

echo '---------------------------'

for arg in ${@:3:2}
do
  echo 'argument: ' $arg
done

echo '---------------------------'

for file in ~/prog/shell/*
do
  echo 'and the file is ' $file
done

echo '---------------------------'

for ((i=0; i<=$#; i++))
do
  echo 'end the argument for ' $i ' is ' ${!i}
done

echo '---------------------------'

while read -r line
do
  if [[ $line =~ ^END$ ]]
  then break
  fi
  echo $line
done 

echo '----------------------------'

count=0
until ((count>10))
do
  echo 'count is' $count
  ((count++))
done
