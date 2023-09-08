@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /LOG:robocopy-log.txt

set srcPath=E:\Videos
set dstPath=D:\Videos

Robocopy.exe "%srcPath%" "%dstPath%" %params%
