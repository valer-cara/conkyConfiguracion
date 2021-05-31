#!/bin/bash 

launch() {
    conky -c $DIR/$1 -q &
}

set -x

DIR=$(dirname "$BASH_SOURCE")

pkill -9 conky

launch "cpurc"
launch "memoryrc"
launch "diskrc"
launch "networkrc"
launch "bateryrc"

