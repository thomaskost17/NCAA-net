#!/bin/sh
while getopts d: flag
do
    case "${flag}" in
        d) get_data=true;;
    esac
done

if $get_data; then
	data_dir = "./data"
	if [-d "data_dir"]; then

		echo "Getting Data...";
	else
		
		echo "Getting Data...";
		mkdir data;
	fi

        for i in 2015 2016 2017 2018 2019 2021
	do
		curl -# -o ./data/$i.csv "https://barttorvik.com/$(i)_team_results.csv";
	done
fi
