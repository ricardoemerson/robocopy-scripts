@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/E /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set srcPath=C:\Users\Ricardo\Desenvolvimento\Projetos
set dstPath=D:\Desenvolvimento\Projetos

Robocopy.exe "%srcPath%" "%dstPath%" %params%
