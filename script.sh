#!/usr/bin/env bash

##
##  - script.sh
## 
##  A script to do:
##    -
##    -
##
## 2018 - Damien Nugent
##

## Functions
onoe() { # prints our defined error message 
  if [[ -t 2 ]] # check whether stderr is a tty.
  then
    echo -ne "\033[4;31mError\033[0m: " >&2 # highlight Error with underline and red color
  else
    echo -n "Error: " >&2
  fi
  if [[ $# -eq 0 ]]
  then
    /bin/cat >&2
  else
    echo "$*" >&2
  fi 
}

odie() {
  onoe "$@"
  exit 1 #exits our script with a nice error code
}

## Variables
var1=""
var2=""

## Logic - remember good hygeine with regards to quoting and parameter expansion

