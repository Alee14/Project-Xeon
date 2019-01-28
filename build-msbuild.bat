@echo off
title Building C++ Program

set msBuildPath=0

if exist "C:\Program Files (x86)\MSBuild\12.0\Bin" (
  set msBuildPath="C:\Program Files (x86)\MSBuild\12.0\Bin"
  set "VCTargetsPath=C:\Program Files (x86)\MSBuild\Microsoft.Cpp\v4.0\V120"
) else (
  if exist "C:\Program Files\MSBuild\12.0\Bin" (
    set msBuildPath="C:\Program Files\MSBuild\12.0\Bin"
	set "VCTargetsPath=C:\Program Files\MSBuild\Microsoft.Cpp\v4.0\V120"
  )
)

if exist "C:\Program Files (x86)\MSBuild\Microsoft.Cpp\v4.0\V120" (
  set toolVersion=v120
) else (
  if exist "C:\Program Files (x86)\MSBuild\Microsoft.Cpp\v4.0\V110" (
    set toolVersion=v110
  )
)


if not %msBuildPath%==0 (
  REM set VCTargetsPath=%msBuildPath%
  echo Building Program...
  %msBuildPath%\msbuild xeon.vcxproj /p:outdir=out /p:assemblyname=game /p:configuration=release 
  echo Building Complete!
  pause > nul
  exit
) else (
  echo ERROR: Could not find MSBuild
  echo Unable to build Program using MSBuild!
  pause > nul
  exit
)
