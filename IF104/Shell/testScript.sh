#!/usr/bin/bash

function lsc
{
    local dir fil rep x

    rep=$1
    
    if [ -z "$rep" ]
    then
	rep="."
    fi
    
    for x in $(ls $rep)
    do
	if [ -d $rep/$x ]
	then
	    dir="$dir $x"
	else
	    fil="$fil $x"
	fi
    done  

    echo -e "\e[94m"
    for d in $dir
    do
	echo $d
	lsc $x
    done
    echo -e "\e[0m"
    for f in $fil
    do
	echo $f
    done
}
lsc

























#    for x in $(ls $1)
#    do
#	if [ -x $x ]
#	then
#	    echo -ne "\e[92m"
#	    echo $x
#	    echo -ne "\e[0m"
#	fi
#   done
#   for x in $@
#    do
#	if [ -d $x ]
#	then
#	    echo -ne "\e[94m"
#	    echo $x
#	    echo -ne "\e[0m"
#	fi
#    done

