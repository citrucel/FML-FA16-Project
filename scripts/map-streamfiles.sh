#!/bin/bash

declare -a arr=("text8-l-pos")
#declare -a arr=("xaa" "xab" "xac" "xad" "xae" "xaf" "xag" "xah" "xai" "xaj" "xak" "xal" "xam" "xan" "xao" "xap" "xaq")   
   
TARGET="../wsd/target/wsd.jar"
DATA_DIR="../pre-data/"
WNETFILE="../wsd/conf/extjwnl_properties.xml"

for f in "${arr[@]}"
do 
   if=$DATA_DIR$f".txt"
   #if=$DATA_DIR"$f"
   echo $if
   of=$DATA_DIR$f"-synsets.txt"
   echo $of
   java -jar ${TARGET} --wnetfile $WNETFILE --streamfile $if --outstreamfile $of 
done
