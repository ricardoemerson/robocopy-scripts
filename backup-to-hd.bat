@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set userDirectory=Ricardo

set srcPath=C:\Users\%userDirectory%
set dstPath=E:\AppData Backup

del "C:\tools\robocopy-scripts\robocopy-log.txt"

setlocal enabledelayedexpansion
set path[0]=.android
set path[1]=.aws
set path[2]=.config
set path[3]=.docker
set path[4]=.m2
set path[5]=.ssh
set path[6]=.vscode
set path[7]=AppData\Local\Android
set path[8]=AppData\Local\Google\AndroidStudio2020.3
set path[9]=AppData\Local\Google\AndroidStudio2021.1
set path[10]=AppData\Local\Google\Chrome\User Data\Default
set path[11]=AppData\Local\LogiBolt
set path[12]=AppData\Local\Microsoft\Credentials
set path[13]=AppData\Local\Microsoft\Windows\Cursors
set path[14]=AppData\Local\Microsoft\Windows\Fonts
set path[15]=AppData\Local\oh-my-posh
set path[16]=AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set path[17]=AppData\Local\qBittorrent
set path[18]=AppData\Local\TeamViewer
set path[19]=AppData\Roaming\Apowersoft\GitMind
set path[20]=AppData\Roaming\Code
set path[21]=AppData\Roaming\DBeaverData
set path[22]=AppData\Roaming\Docker
set path[23]=AppData\Roaming\Docker Desktop
set path[24]=AppData\Roaming\espanso
set path[25]=AppData\Roaming\flameshot
set path[26]=AppData\Roaming\FileZilla
set path[27]=AppData\Roaming\Google
set path[28]=AppData\Roaming\Insomnia
set path[29]=AppData\Roaming\JAM Software
set path[30]=AppData\Roaming\Logishrd
set path[31]=AppData\Roaming\Microsoft\Windows\PowerShell
set path[32]=AppData\Roaming\NetBeans
set path[33]=AppData\Roaming\Nucleo
set path[34]=AppData\Roaming\obs-studio
set path[35]=AppData\Roaming\PLSQL Developer
set path[36]=AppData\Roaming\powershell
set path[37]=AppData\Roaming\qBittorrent
set path[38]=AppData\Roaming\ScreenToGif
set path[39]=AppData\Roaming\Spotify
set path[40]=AppData\Roaming\Subversion
set path[41]=AppData\Roaming\TeamViewer
set path[42]=AppData\Roaming\Telegram Desktop
set path[43]=AppData\Roaming\TortoiseSVN
set path[44]=AppData\Roaming\Typora
set path[45]=AppData\Roaming\Udeler
set path[46]=AppData\Roaming\vlc
set path[47]=AppData\Roaming\WhatsApp
set path[48]=AppData\Roaming\WizTree3

for /l %%p in (0,1,48) do (
   Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params% /XD "C:\Users\Ricardo\AppData\Local\Google\AndroidStudio2021.1\tmp" "C:\Users\Ricardo\AppData\Local\Google\AndroidStudio2020.3\tmp" "C:\Users\Ricardo\AppData\Local\Google\Chrome\User Data\Default\Code" "C:\Users\Ricardo\AppData\Local\Google\Chrome\User Data\Default\Code Cache" "C:\Users\Ricardo\AppData\Local\Google\Chrome\User Data\Default\Service Worker"
)

Robocopy.exe "%srcPath%" "%dstPath%" .gitconfig .ps_history .wslconfig .yarnrc /LOG+:robocopy-log.txt
