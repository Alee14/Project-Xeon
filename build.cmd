@echo off
title Building C++ Program
echo Building Program...
echo Shell: CMD
:findmingw
set mingwPath=0
if exist "C:\MinGW" (
  set "mingwPath=C:\MinGW"
)
if "%mingwPath%"=="0" (
  title Building C++ Program - Failed
  echo MinGW could not be found. Please make sure that MinGW is installed.
  pause>nul
  exit
)
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