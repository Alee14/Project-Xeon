@echo off
title Building C++ Program

:findMsBuild
set msBuildPath=0
if exist "C:\Program Files\MSBuild" (
  set "msBuildPath=C:\Program Files\MSBuild"
)
if exist "C:\Program Files (x86)\MSBuild" (
  set "msBuildPath=C:\Program Files (x86)\MSBuild"
)
if "%msBuildPath%"=="0" (
  echo MSBuild could not be found. Please make sure that MSBuild is installed.
  pause>nul
  exit
)

:findMsBuildVersion
set msBuildVersion=0
if exist "%msBuildPath%\12.0" (
  set msBuildVersion=12.0
)
if %msBuildVersion%==0 goto manualMsBuildVersionOverride

:findTools
echo ----------------------------------------
echo Found MSBuild version %msBuildVersion%
echo ----------------------------------------

set toolVersion=0
if exist "%msBuildPath%\Microsoft.Cpp\v4.0\V110" (
  set toolVersion=v110
)
if exist "%msBuildPath%\Microsoft.Cpp\v4.0\V120" (
  set toolVersion=v120
)
if "%toolVersion%"=="0" goto manualToolVersionOverride

:setVCTargets
echo ----------------------------------------
echo Found VCTools version %toolVersion%
echo ----------------------------------------

set "VCTargetsPath=%msBuildPath%\Microsoft.Cpp\v4.0\%toolVersion%"

:build
echo Building Program...
"%msBuildPath%\%msBuildVersion%\Bin\msbuild.exe" xeon.vcxproj /p:outdir=out /p:assemblyname=game /p:configuration=release > msbuild.log
echo Building Complete!
pause>nul
exit



:manualMsBuildVersionOverride
echo Could not find MSBuild 12.0
echo Please specify the installed version manually or close this window,
echo install either of these versions and try again.
set /p manualMsBuildVersion=MSBuild version number: 
set msBuildVersion=%manualmsBuildVersion%
if exist "%msBuildPath%\%manualMsBuildVersion%" (
  goto findTools
) else (
  echo Could not find MSBuild version!
  pause>nul 
  exit
)

:manualToolVersionOverride
echo Could not find MSBuild tools V120 or V110.
echo Please specify the version of installed tools manually
echo or close this window, install either of these versions and try again.
set /p manualToolVersion=Tool version number: 
set toolVersion=v%manualToolVersion%
if exist "%msBuildPath%\Microsoft.Cpp\v4.0\%toolVersion%" (
  goto setVCTargets
) else (
  echo Could not find tool version!
  pause>nul
  exit
)
