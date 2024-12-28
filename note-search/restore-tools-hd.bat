@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/E /MT /W:10 /R:3 /NP

set userDirectory=Ricardo

set srcPath=D:\Desenvolvimento\Search\Backups\note-search\tools
set dstPath=C:\tools

Robocopy.exe "%srcPath%" "%dstPath%" %params% /XD "C:\tools\Java\default"
