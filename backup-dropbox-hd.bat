@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocop-log.txt

set params=/MIR /MT /W:10 /R:3 /LOG+:robocop-log.txt

set userDirectory=Ricardo

set srcPath=D:\Dropbox
set dstPath=E:\Ricardo\Dropbox

del "C:\tools\Robocopy Backup\robocop-log.txt"

Robocopy.exe "%srcPath%" "%dstPath%" %params%