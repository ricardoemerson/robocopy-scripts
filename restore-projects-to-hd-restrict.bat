@echo off

@REM set params=/MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/E /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set userDirectory=Ricardo

set srcPath=D:\Ricardo\Desenvolvimento\Projetos
set dstPath=C:\Users\%userDirectory%\Desenvolvimento\Projetos

del "C:\tools\robocopy-scripts\robocopy-log.txt"

setlocal enabledelayedexpansion
set path[0]=dart-projects
set path[1]=flutter-projects
set path[2]=vscode-extensions
set path[3]=youtube-projects

for /l %%p in (0,1,3) do (
  echo  - Copiando !path[%%p]!...

  Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params%
)

