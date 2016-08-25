#!/bin/bash

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
    tmux split-window -v -t $sessionname "cd /Users/reborg/prj/dm/clj_fe; lein repl :connect $i:$PORT"
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
