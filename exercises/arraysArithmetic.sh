#!/usr/bin/bash

simplearray=(Hello how are you today)

echo ${simplearray[0]}
echo ${#simplearray[*]}
echo ${#simplearray[@]}
echo ${#simplearray}

a=22
echo $((a++))
echo $((++a))

echo '-------------------'

notend=true

if $notend
then echo 'done'
fi

cat <<- END
  this
  is
  another
  way
END

while $notend
do
  read data 
  echo $data
done 



