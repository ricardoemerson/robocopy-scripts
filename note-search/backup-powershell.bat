@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /XJ

@REM set srcPath=C:\Users\ricardojardim\Documents\PowerShell
@REM set dstPath=C:\Users\ricardojardim\Desenvolvimento\Backups\note-search\PowerShell

set srcPath=D:\Documents\PowerShell
set dstPath=D:\Backups\note-search\PowerShell

Robocopy.exe "%srcPath%" "%dstPath%" %params%
