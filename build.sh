#!/bin/bash
echo 'Not working... Sorry :('
<<COMMENT
echo 'Building Program...'
echo 'Shell: Bash'
if [ -d "out" ] 
then
echo 'Skipping making the "out" directory...'
else
mkdir out
echo 'Created the "out" folder..'
fi
g++ --version
g++ -g main.cpp -o out/game.exe
echo 'Building Complete!'
read -p 'Press any key to finish...'
COMMENT