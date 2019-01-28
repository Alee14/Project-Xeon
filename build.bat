@echo off
title Building C++ Program
echo Building Program...
mkdir out
g++ -g main.cpp -o out/game.exe
echo Building Complete!
pause>nul