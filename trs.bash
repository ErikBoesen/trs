#!/usr/bin/env bash

args=("$@")

if [ "$1" == "--empty" ]
then
    # Need to check for this, otherwise it'll try to remove /*.
    if [[ $TRASH != "" ]]; then
        echo "Emptying trash..."
        rm -rf $TRASH/*
        echo "done."
    else
        echo "Please set your \$TRASH environment variable to the path to your trash."
    fi
else
    echo ""

    for arg in $args; do
        # TODO: Fix
        echo "$arg"
    done
fi
