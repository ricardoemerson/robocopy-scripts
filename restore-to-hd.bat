@echo off

@REM set params=/MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocop-log.txt

set params=/E /MT /W:10 /R:3 /LOG+:robocop-log.txt

set userDirectory=ricardojardim

set srcPath=E:\AppData Backup
set dstPath=C:\Users\%userDirectory%

del "C:\tools\robocopy-scripts\robocop-log.txt"

setlocal enabledelayedexpansion
set path[0]=.android
set path[1]=.aws
set path[2]=.config
set path[3]=.docker
set path[4]=.m2
set path[5]=.ssh
set path[6]=AppData\Local\Android
set path[7]=AppData\Local\LogiBolt
set path[8]=AppData\Local\Microsoft\Credentials
set path[9]=AppData\Local\Microsoft\Windows\Cursors
set path[10]=AppData\Local\Microsoft\Windows\Fonts
set path[11]=AppData\Local\oh-my-posh
set path[12]=AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set path[13]=AppData\Local\qBittorrent
set path[14]=AppData\Local\TeamViewer
set path[15]=AppData\Roaming\Apowersoft\GitMind
set path[16]=AppData\Roaming\Code
set path[17]=AppData\Roaming\DBeaverData
set path[18]=AppData\Roaming\Docker
set path[19]=AppData\Roaming\Docker Desktop
set path[20]=AppData\Roaming\espanso
set path[21]=AppData\Roaming\FileZilla
set path[22]=AppData\Roaming\Insomnia
set path[23]=AppData\Roaming\JAM Software
set path[24]=AppData\Roaming\Logishrd
set path[25]=AppData\Roaming\Microsoft\Windows\PowerShell
set path[26]=AppData\Roaming\NetBeans
set path[27]=AppData\Roaming\Nucleo
set path[28]=AppData\Roaming\obs-studio
set path[29]=AppData\Roaming\PLSQL Developer
set path[30]=AppData\Roaming\powershell
set path[31]=AppData\Roaming\qBittorrent
set path[32]=AppData\Roaming\Spotify
set path[33]=AppData\Roaming\Subversion
set path[34]=AppData\Roaming\TeamViewer
set path[35]=AppData\Roaming\Telegram Desktop
set path[36]=AppData\Roaming\TortoiseSVN
set path[37]=AppData\Roaming\Typora
set path[38]=AppData\Roaming\Udeler
set path[39]=AppData\Roaming\vlc
set path[40]=AppData\Roaming\WhatsApp
set path[41]=AppData\Roaming\WizTree3

for /l %%p in (0,1,41) do (
   Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params%
)

Robocopy.exe "%srcPath%" "%dstPath%" .gitconfig .ps_history .wslconfig .yarnrc /LOG+:robocop-log.txt
