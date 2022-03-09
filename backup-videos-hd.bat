@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/E /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set userDirectory=Ricardo

set srcPath=D:\Videos
set dstPath=E:\Ricardo\Videos

del "C:\tools\robocopy-scripts\robocopy-log.txt"

setlocal enabledelayedexpansion
set path[0]=Canal Youtube
set path[1]=Obs Studio

for /l %%p in (0,1,1) do (
   Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params%
)
