#!/bin/bash

usage() {
    echo
    echo
    echo "Application Call: "
    echo
    echo "$BNAME sessionname"
    echo "before calling the script do: export HOSTS='host1 host2 host3'"
    echo "as a list of hosts to work on, or you will be promted to type"
    echo "the list in." 
}

starttmux() {
    echo 
    echo $HOSTS
    if [ -z "$HOSTS" ]; then
       echo -n "Please provide of list of hosts separated by spaces [ENTER]: "
       read HOSTS
    fi
    
    tmux new-session -d -s $sessionname 
    for i in $HOSTS
    do
    tmux split-window -v -t $sessionname "ssh instockadmin@$i"
    tmux select-layout tiled
    done
    tmux set-window-option synchronize-panes on
    tmux attach -t $sessionname 
}

BNAME=`basename $0`
if  [ $# -lt 1 ]; then
    usage
    exit 0
fi

sessionname=$1
starttmux
