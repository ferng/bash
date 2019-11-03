#!/usr/bin/bash

read -r choice

case $choice in
  'hello') echo 'how are you?' ;;
  'ok') echo 'well that is good to hear' ;;
  'bye') echo 'well, bye' ;;
  *) echo 'really?' ;;
esac

