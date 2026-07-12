#!/bin/bash

for ((i=1; i<=20; i++))
do
    echo -n "$i : "

    if ((i % 2 == 0))
    then
        echo -n "Even"
    else
        echo -n "Odd"
    fi

    if ((i % 3 == 0))
    then
        echo -n " | Multiple of 3"
    fi

    echo
done