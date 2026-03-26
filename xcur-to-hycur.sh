#!/bin/bash

NAME="[Hanako-cur-porter]"
WORKINGPATH=$(dirname "$(readlink -f "$0")")

echo $NAME Setting working directory to "$WORKINGPATH"
cd "$WORKINGPATH"

echo

echo $NAME Flushing temporary directory in case it exist
rm -r ./tmp 2> /dev/null

echo $NAME Making temporary directory
mkdir ./tmp

echo

echo $NAME Porting and building with hyprcursor-util

hyprcursor-util -x "./xcur/Urawa Hanako (3D)" -o ./tmp > /dev/null
hyprcursor-util -c "./tmp/extracted_Urawa Hanako (3D)" -o ./tmp > /dev/null

echo $NAME Moving generated cursor images

cp -rf "./tmp/extracted_Urawa Hanako (3D)/hyprcursors" "./hycur/sources/"
cp -rf "./tmp/theme_Extracted Theme/hyprcursors" "./hycur/Urawa Hanako (3D)/"

echo $NAME Flushing temporary directory
rm -r ./tmp

echo $NAME Done