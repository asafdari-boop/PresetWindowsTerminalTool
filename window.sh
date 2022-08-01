function window() {
    if [ ! -d "groups" ]; then
        mkdir ./groups
    fi
    cd ./groups
    if [  "$1" == "c"  ]; then
        touch $2
        wind="open -na '$3' --args --new-window "
        wind+=" ${@:4}"
        echo -n "$wind" > "$2"
    elif [  "$1" == "d"  ]; then
        rm -f $2
    elif [  "$1" == "u" ]; then
        new=" ${@:3}"
        echo -n "$new" >> "$2"
    elif [ "$1" == "l"  ]; then
        ls ./
    else
        source $1
    fi
    cd ../

}
