#!/usr/bin/bash

threefour() {
  echo 'here we display the chosen ones - 3:' $1 'and 4:' $2
  return 3
}

echo 'we got some args [' $* '] and we will pass 3 and 4 to function'
threefour $3 $4

echo 'and the status was' $?
