@echo off

set params=/MIR /MT /W:10 /R:3 /NP /XJ /XD node_modules build .fvm .dart_tool target *_old *-new my-notes

set srcPath=D:\Desenvolvimento
set dstPath=D:\Desenvolvimento\Search

Robocopy.exe "%srcPath%" "%dstPath%" %params%
