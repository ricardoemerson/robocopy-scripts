@echo off

@REM set params=/MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/E /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set userDirectory=ricardo

set srcPath=d:\Ricardo\tools
set dstPath=C:\tools

del "C:\tools\robocopy-scripts\robocopy-log.txt"

Robocopy.exe "%srcPath%" "%dstPath%" %params%
