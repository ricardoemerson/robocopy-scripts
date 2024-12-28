@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /XJ /XD node_modules build .fvm .dart_tool

set srcPath=D:\Desenvolvimento\Search
set dstPath=E:\Ricardo\Desenvolvimento\Search

Robocopy.exe "%srcPath%" "%dstPath%" %params%
