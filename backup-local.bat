@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt

set params=/MIR /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set userDirectory=Ricardo

set srcPath=C:\Users\%userDirectory%
set dstPath=D:\Backup\AppData

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
set path[8]=AppData\Local\Ditto_WindowsApp
set path[9]=AppData\Local\Google\AndroidStudio2020.3
set path[10]=AppData\Local\Google\AndroidStudio2021.1
set path[11]=AppData\Local\Google\Chrome\User Data\Default
set path[12]=AppData\Local\LogiBolt
set path[13]=AppData\Local\Macro_Deck\Macro_Deck_2_Url_vfpjnpinx3jslgeip5wgbsz511kvbm11\2.21.3110.100
set path[14]=AppData\Local\Meltytech\Shotcut
set path[15]=AppData\Local\Microsoft\Credentials
set path[16]=AppData\Local\Microsoft\Windows\Cursors
set path[17]=AppData\Local\Microsoft\Windows\Fonts
set path[18]=AppData\Local\Movavi
set path[19]=AppData\Local\oh-my-posh
set path[20]=AppData\Local\Packages\19282JackieLiu.Notepads-Beta_echhpq9pdbte8
set path[21]=AppData\Local\Packages\33823Nicke.ScreenToGif_99xjgbc30gqtw
set path[22]=AppData\Local\Packages\60145ScottBrogden.ditto-cp_n6b029mg40na2
set path[23]=AppData\Local\Packages\JohannesTscholl.Pantherbar_3hp4skfxf5x2g
set path[24]=AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set path[25]=AppData\Local\qBittorrent
set path[26]=AppData\Local\TeamViewer
set path[27]=AppData\Roaming\Apowersoft\GitMind
set path[28]=AppData\Roaming\audacity
set path[29]=AppData\Roaming\Code
set path[30]=AppData\Roaming\DBeaverData
set path[31]=AppData\Roaming\Docker
set path[32]=AppData\Roaming\Docker Desktop
set path[33]=AppData\Roaming\espanso
set path[34]=AppData\Roaming\flameshot
set path[35]=AppData\Roaming\FileZilla
set path[36]=AppData\Roaming\Google
set path[37]=AppData\Roaming\Insomnia
set path[38]=AppData\Roaming\JAM Software
set path[39]=AppData\Roaming\LGHUB
set path[40]=AppData\Roaming\Logishrd
set path[41]=AppData\Roaming\Macro Deck
set path[42]=AppData\Roaming\Microsoft\Windows\PowerShell
set path[43]=AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Apps do Chrome
set path[44]=AppData\Roaming\NetBeans
set path[45]=AppData\Roaming\obs-studio
set path[46]=AppData\Roaming\PLSQL Developer
set path[47]=AppData\Roaming\Postman
set path[48]=AppData\Roaming\powershell
set path[49]=AppData\Roaming\qBittorrent
set path[50]=AppData\Roaming\ScreenToGif
set path[51]=AppData\Roaming\Spotify
set path[52]=AppData\Roaming\Subversion
set path[53]=AppData\Roaming\TeamViewer
set path[54]=AppData\Roaming\Telegram Desktop
set path[55]=AppData\Roaming\TortoiseSVN
set path[56]=AppData\Roaming\Typora
set path[57]=AppData\Roaming\Udeler
set path[58]=AppData\Roaming\vlc
set path[59]=AppData\Roaming\WhatsApp
set path[60]=AppData\Roaming\WizTree3
set path[61]=AppData\Roaming\VOVSOFT

for /l %%p in (0,1,61) do (
  echo  - Copiando !path[%%p]!...

  Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params% /XD "C:\Users\Ricardo\AppData\Local\Google\AndroidStudio2021.1\tmp" "C:\Users\Ricardo\AppData\Local\Google\AndroidStudio2020.3\tmp" "C:\Users\Ricardo\AppData\Local\Google\Chrome\User Data\Default\Code" "C:\Users\Ricardo\AppData\Local\Google\Chrome\User Data\Default\Code Cache" "C:\Users\Ricardo\AppData\Local\Google\Chrome\User Data\Default\Service Worker" "C:\Users\Ricardo\AppData\Roaming\Macro Deck\credentials"
)

Robocopy.exe "%srcPath%" "%dstPath%" .gitconfig .ps_history .wslconfig .yarnrc /LOG+:robocopy-log.txt
