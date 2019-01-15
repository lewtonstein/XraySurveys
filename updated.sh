#!/usr/bin/env bash
#Run if a file modified
#$1: file
#$2: message, if not given, long message can be writen in vi
[[ ! -f $1 ]] && echo "ERROR" >&2 && exit 1
msg='' #input manually
[[ $# -eq 2 ]] && msg="-m $2" && echo $msg
git pull origin master
git add $1
git commit $msg
git push origin master
