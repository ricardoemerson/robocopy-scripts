@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /LOG:robocopy-log.txt

set userDirectory=Ricardo

set srcPath=C:\Program Files\obs-studio
set dstPath=E:\Programas\obs-studio-install

Robocopy.exe "%srcPath%" "%dstPath%" %params%
