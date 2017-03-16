#!/usr/bin/env bash

if [[ "$1" == "-e" || "$1" == "--empty" ]]; then
    # Need to check for this, otherwise it'll try to remove /*.
    if [[ $TRASH != "" ]]; then
        echo "Emptying trash..."
        rm -rf $TRASH/*
        echo "done."
    else
        echo "Please set your \$TRASH environment variable to the path to your trash."
    fi
elif [[ "$1" == "-h" || "$1" == "--help" || "$1" == "" ]]; then
    echo "trs [files...]     -> Move given files to trash."
    echo "trs [--empty | -e] -> Empty the trash."
    echo "To view this help menu again, type trs -h or --help."
else
    echo -n "Moving files to trash..."

    for arg in "$@"; do
        mv "$arg" "$TRASH"
    done
    echo " done!"
fi
