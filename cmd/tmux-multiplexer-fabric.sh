#!/bin/bash

usage() {
    echo
    echo
    echo "Call: "
    echo
    echo "$BNAME sessionname applicationname fabricconfig"
    echo "before calling the script do: export HOSTS='0 1 2'"
    echo "as a list of hosts to work on, or you will be promted to type"
    echo "the list in."
}

starttmux() {
    echo
    echo $HOSTS
    if [ -z "$HOSTS" ]; then
      echo -n "Please provide the instance numbers you want to connect to separated by spaces (e.g. 0 1 2 [ENTER]): "
       read HOSTS
    fi

    tmux new-session -d -s $sessionname
    for i in $HOSTS
    do
    tmux split-window -v -t $sessionname "fab -f $fabricconfig ec2.ssh:$application,$i"
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
application=$2
fabricconfig=$3
starttmux
