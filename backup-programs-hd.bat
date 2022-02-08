@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /NP /R:3 /LOG+:robocopy-log.txt

set userDirectory=Ricardo


set srcPath=D:\Downloads\Programas
set dstPath=E:\Programas

del "C:\tools\robocop-scripts\robocopy-log.txt"

Robocopy.exe "%srcPath%" "%dstPath%" %params%
