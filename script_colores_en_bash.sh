#!/bin/bash
# Font color cycle
for color1 in {31..37}
    do
        echo -e "\033[0;${color1};40m---hello! world---\033[0m"
    done

echo "-------"

# Background color cycle
for color2 in {40..47}
    do
        echo -e "\033[30;${color2}m---hello! world---\033[0m"
    done

echo "-------"

# Cycle of display mode
for color3 in 0 1 4 5 7 8
    do
        echo -e "\033[${color3};37;40m---hello! world---\033[0m"
    done

