#!/bin/bash

# make sure we have all parameters we need
if [ $# -ne 3 ]; then
  printf "\nERROR: usage - gitLabels <repo> <user> <password>\n\n"
  exit 1
fi

# delete default labels
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/bug"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/duplicate"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/enhancement"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/good%20first%20issue"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/help%20wanted"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/invalid"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/question"
curl --user "$2:$3" --include --request DELETE "https://api.github.com/repos/$2/$1/labels/wontfix"

# add my labels
curl --user "$2:$3" --include --request POST --data '{"name":"architecture","color":"dcf970"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"bug","color":"2c3a99"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"duplicate","color":"cccccc"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"enhancement","color":"84b6eb"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"help wanted","color":"128A0C"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"invalid","color":"e6e6e6"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"performance","color":"f2bb79"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"question","color":"cc317c"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"requirements","color":"00a547"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"security","color":"ee0701"}' "https://api.github.com/repos/$2/$1/labels"
curl --user "$2:$3" --include --request POST --data '{"name":"wontfix","color":"ffffff"}' "https://api.github.com/repos/$2/$1/labels"

