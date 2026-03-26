#!/bin/bash

NAME="[Hanako-xcur-builder]"
WORKINGPATH=$(dirname "$(readlink -f "$0")")/xcur

echo $NAME Setting working directory to "$WORKINGPATH/sources"
cd "$WORKINGPATH/sources"

echo

echo $NAME Flushing temporary directory in case it exist
rm -r ./tmp 2> /dev/null

echo $NAME Making temporary directory
mkdir ./tmp

echo

echo $NAME Generating regular
xcursorgen -p ./regular ./regular/regular.cursor ./tmp/regular 2> /dev/null

echo $NAME Generating hold
xcursorgen -p ./hold ./hold/hold.cursor ./tmp/hold 2> /dev/null

echo $NAME Generating hold4arr
xcursorgen -p ./hold4arr ./hold4arr/hold4arr.cursor ./tmp/hold4arr 2> /dev/null

echo

echo $NAME Moving generated cursor images
mv ./tmp ./cursors
cp -rf ./cursors "../Urawa Hanako (3D)/"

echo $NAME Flushing temporary directory
rm -r ./cursors

echo

echo $NAME Setting working directory to "$WORKINGPATH/Urawa Hanako (3D)/cursors"
cd "$WORKINGPATH/Urawa Hanako (3D)/cursors"

echo

echo $NAME Symlinking images

ln -sf regular arrow
ln -sf regular dnd-move
ln -sf regular left_ptr
ln -sf regular move
ln -sf regular top_left_arrow

ln -sf hold grab
ln -sf hold grabbing

ln -sf hold4arr all-resize
ln -sf hold4arr fleur

echo $NAME Done
