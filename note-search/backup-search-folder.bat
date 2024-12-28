@echo off

set params=/E /MT /W:10 /R:3 /NP /XJ

set srcPath=D:\Desenvolvimento\Search
set dstPath=C:\Users\ricardojardim\Desenvolvimento

Robocopy.exe "%srcPath%" "%dstPath%" %params% /XD D:\Desenvolvimento\Search\Dropbox
