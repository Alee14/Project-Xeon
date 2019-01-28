@echo off
title Building C++ Program
echo Building Program...
echo Shell: CMD
if exist out (
echo Skipping making the "out" folder...
) else (    
mkdir out 
echo Created the "out" folder..
)
g++ --version
g++ -g main.cpp -o out/game.exe
echo Building Complete!
pause>nul