#!/bin/bash
while true;
do
  clear
  figlet -f mini "Google Search"
  echo "- - - - - - - - - - - - - - - - -"
  echo "- - - - - - - - - - - - - - - - -"
  echo "Search for: \c"
  read input
  #ASK USER FOR INPUT - EITHER QUIT OR SEARCH GOOGLE
  case $input in
	  quit|Quit|q|Q)
		  clear; exit ;;
    log | Log | LOG)
      less google.log;;
	  *)
      echo $input >> google.log
      firefox https://www.google.com/?gws_rd=ssl\#q="$input"
  esac
done
