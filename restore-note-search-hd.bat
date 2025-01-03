@echo off

set params=/E /MT /W:10 /R:3 /NP /LOG+:robocopy-log.txt

set userDirectory=ricardo

set srcPath=E:\AppData Backup
set dstPath=C:\Users\ricardojardim

setlocal enabledelayedexpansion
set path[0]=.android
set path[1]=.aws
set path[2]=.config
set path[3]=.docker
set path[4]=.m2
set path[5]=.ssh
set path[6]=.vscode
set path[7]=AppData\Local\Android
set path[8]=AppData\Local\Google
set path[9]=AppData\Local\Mozilla
set path[10]=AppData\Local\oh-my-posh
set path[11]=AppData\Local\Packages\19282JackieLiu.Notepads-Beta_echhpq9pdbte8
set path[12]=AppData\Local\Packages\33823Nicke.ScreenToGif_99xjgbc30gqtw
set path[13]=AppData\Local\Packages\60145ScottBrogden.ditto-cp_n6b029mg40na2
set path[14]=AppData\Local\Packages\JohannesTscholl.Pantherbar_3hp4skfxf5x2g
set path[15]=AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set path[16]=AppData\Local\qBittorrent
set path[17]=AppData\Roaming\AnyDesk
set path[18]=AppData\Roaming\audacity
set path[19]=AppData\Roaming\Canva
set path[20]=AppData\Roaming\Code
set path[21]=AppData\Roaming\Codota\TabNine
set path[22]=AppData\Roaming\DBeaverData
set path[23]=AppData\Roaming\Docker
set path[24]=AppData\Roaming\Docker Desktop
set path[25]=AppData\Roaming\espanso
set path[26]=AppData\Roaming\Figma
set path[27]=AppData\Roaming\FileZilla
set path[28]=AppData\Roaming\GHISLER
set path[29]=AppData\Roaming\Google
set path[30]=AppData\Roaming\Insomnia
set path[31]=AppData\Roaming\JAM Software
set path[32]=AppData\Roaming\Learnpulse\Screenpresso
set path[33]=AppData\Roaming\Macro Deck
set path[34]=AppData\Roaming\Microsoft\Windows\PowerShell
set path[35]=AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Apps do Chrome
set path[36]=AppData\Roaming\Mozilla
set path[37]=AppData\Roaming\mini-video-me
set path[38]=AppData\Roaming\obsidian
set path[39]=AppData\Roaming\obs-studio
set path[40]=AppData\Roaming\Postman
set path[41]=AppData\Roaming\powershell
set path[42]=AppData\Roaming\qBittorrent
set path[43]=AppData\Roaming\ScreenToGif
set path[44]=AppData\Roaming\TabNine
set path[45]=AppData\Roaming\Telegram Desktop
set path[46]=AppData\Roaming\Udeler
set path[47]=AppData\Roaming\vlc
set path[48]=AppData\Roaming\WhatsApp
set path[49]=AppData\Roaming\VOVSOFT

for /l %%p in (0,1,49) do (
  echo  - Copiando !path[%%p]!...

  Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params%
)

Robocopy.exe "%srcPath%" "%dstPath%" .gitconfig .ps_history .wslconfig .yarnrc /LOG+:robocopy-log.txt
