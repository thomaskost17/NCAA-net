#!/bin/sh
get_data=false
while getopts ":d" flag;do
    case $flag in
        d) 
		get_data=true
		;;
	\?) 
		echo "Invalid option: -$OPTARG"
		;;
    esac
done

if $get_data; then
	data_dir="./data"
	if [ ! -d "$data_dir" ]
       	then
		mkdir data
	fi
	echo "Getting Data..."
        for i in 2015 2016 2017 2018 2019 2021
	do
		curl -s -o ./data/"$i"_team.csv "https://barttorvik.com/"$i"_team_results.csv";
	done
	echo "Data Collected!"
fi


