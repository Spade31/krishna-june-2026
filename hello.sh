#!/bin/bash
read -p "Enter 1 or 2:" CHOICE
case "$CHOICE" in "1")
echo "this is the first  case"
apt-get update
echo "this is the 2nd update"
;;
"2")
echo "goodbye";;
esac
