@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /XJ

@REM set srcPath=C:\tools
@REM set dstPath=C:\Users\ricardojardim\Desenvolvimento\Backups\note-search\tools

set srcPath=C:\tools
set dstPath=D:\Backups\note-search\tools

Robocopy.exe "%srcPath%" "%dstPath%" %params%
