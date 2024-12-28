@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /XJ

set srcPath=C:\tools
set dstPath=D:\Backup\tools

Robocopy.exe "%srcPath%" "%dstPath%" %params%
