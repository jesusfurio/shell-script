#!/bin/bash
#Array with options value
array=("1) Option name" "2) Option name" "3) Option name" "4) Option name")

#For bucle with all options in array.
echo "Welcome to menu: "
for i in "${array[@]]}"; do
    echo $i
done
echo "Select your option: "
read option

#Case with all options and related script or function.
case $option in
    "1") ./script_name.sh
    ;;
    "2") ./script_name.sh
    ;;
    "3") function_name
    ;;
    "4") function_name
    ;;
esac

    