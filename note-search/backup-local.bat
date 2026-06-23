@echo off

@REM set params=/MIR /MT /W:15 /R:7 /NS /NC /NFL /NDL /NP /LOG+:robocopy-log.txt
@REM del "C:\tools\robocopy-scripts\robocopy-log.txt"

set params=/MIR /MT /W:10 /R:3 /NP /XJ /XD "C:\Users\ricardojardim\AppData\Local\Google\AndroidStudio2024.2\tmp" "C:\Users\ricardojardim\AppData\Local\Google\Chrome\User Data\Default\Code" "C:\Users\ricardojardim\AppData\Local\Google\Chrome\User Data\Default\Code Cache" "C:\Users\ricardojardim\AppData\Local\Google\Chrome\User Data\Default\Service Worker" "C:\Users\ricardojardim\AppData\Roaming\Macro Deck\credentials" "C:\Users\ricardojardim\AppData\Local\Mozilla\Firefox\Profiles\1f1inxz9.default-release\cache2"

set srcPath="C:\Users\ricardojardim"
set dstPath=D:\Backups\note-search\AppData

setlocal enabledelayedexpansion
set path[0]=.android
set path[1]=.abdm
set path[2]=.aws
set path[3]=.claude
set path[4]=.config
set path[5]=.docker
set path[6]=.gemini
set path[7]=.local
set path[8]=.m2\settings.xml
set path[9]=.ollama
set path[10]=.pi
set path[11]=.pyenv
set path[12]=.receitanet
set path[13]=.rfb
set path[14]=.sprintfy
set path[15]=.ssh
set path[16]=.synara
set path[17]=.vscode
set path[18]=AppData\Local\Android
set path[19]=AppData\Local\BraveSoftware\Brave-Browser\User Data\Default
set path[20]=AppData\Local\Google\AndroidStudio2024.2
set path[21]=AppData\Local\Google\Chrome\User Data\Default
set path[22]=AppData\Local\JetBrains\Toolbox\scripts
set path[23]=AppData\Local\Microsoft\Windows\Fonts
set path[24]=AppData\Local\Movavi
set path[25]=AppData\Local\Mozilla
set path[26]=AppData\Local\oh-my-posh
set path[27]=AppData\Local\Packages\19282JackieLiu.Notepads-Beta_echhpq9pdbte8
set path[28]=AppData\Local\Packages\33823Nicke.ScreenToGif_99xjgbc30gqtw
set path[29]=AppData\Local\Packages\60145ScottBrogden.ditto-cp_n6b029mg40na2
set path[30]=AppData\Local\Packages\DropboxInc.Dropbox_wkt425jdc3sga
set path[31]=AppData\Local\Packages\JohannesTscholl.Pantherbar_3hp4skfxf5x2g
set path[32]=AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
set path[33]=AppData\Local\qBittorrent
set path[34]=AppData\Roaming\ai.opencode.desktop
set path[35]=AppData\Roaming\AnyDesk
set path[36]=AppData\Roaming\audacity
set path[37]=AppData\Roaming\Antigravity
set path[38]=AppData\Roaming\br.com.ricardoemerson
set path[39]=AppData\Roaming\br.com.searchtecnologia
set path[40]=AppData\Roaming\Canva
set path[41]=AppData\Roaming\Code
set path[42]=AppData\Roaming\Codota\TabNine
set path[43]=AppData\Roaming\DBeaverData
set path[44]=AppData\Roaming\Ditto
set path[45]=AppData\Roaming\Docker
set path[46]=AppData\Roaming\Docker Desktop
set path[47]=AppData\Roaming\espanso
set path[48]=AppData\Roaming\Figma
set path[49]=AppData\Roaming\FileZilla
set path[50]=AppData\Roaming\GHISLER
set path[51]=AppData\Roaming\Google
set path[52]=AppData\Roaming\HandBrake
set path[53]=AppData\Roaming\Insomnia
set path[54]=AppData\Roaming\Learnpulse
set path[55]=AppData\Roaming\Jan
set path[56]=AppData\Roaming\JAM Software
set path[57]=AppData\Roaming\JetBrains
set path[58]=AppData\Roaming\Learnpulse\Screenpresso
set path[59]=AppData\Roaming\Macro Deck
set path[60]=AppData\Roaming\Microsoft\Windows\PowerShell
set path[61]=AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Apps do Chrome
set path[62]=AppData\Roaming\Mozilla
set path[63]=AppData\Roaming\mini-video-me
set path[64]=AppData\Roaming\NetBeans
set path[65]=AppData\Roaming\obsidian
set path[66]=AppData\Roaming\obs-studio
set path[67]=AppData\Roaming\Octarine.app
set path[68]=AppData\Roaming\ollama app.exe
set path[69]=AppData\Roaming\Open Design
set path[70]=AppData\Roaming\OpenCode
set path[71]=AppData\Roaming\PLSQL Developer
set path[72]=AppData\Roaming\PLSQL Developer 16
set path[73]=AppData\Roaming\Postman
set path[74]=AppData\Roaming\powershell
set path[75]=AppData\Roaming\qBittorrent
set path[76]=AppData\Roaming\ScreenToGif
set path[77]=AppData\Roaming\sprintfy
set path[78]=AppData\Roaming\synara
set path[79]=AppData\Roaming\TabNine
set path[80]=AppData\Roaming\tabularis
set path[81]=AppData\Roaming\Telegram Desktop
set path[82]=AppData\Roaming\Udeler
set path[83]=AppData\Roaming\vlc
set path[84]=AppData\Roaming\warp
set path[85]=AppData\Roaming\WhatsApp
set path[86]=AppData\Roaming\VOVSOFT
set path[87]=AppData\Roaming\Zed

for /l %%p in (0,1,87) do (
  echo  - Copiando !path[%%p]!...

  Robocopy.exe "%srcPath%\!path[%%p]!" "%dstPath%\!path[%%p]!" %params%
)

Robocopy.exe "%srcPath%" "%dstPath%" .gitconfig .ps_history .wslconfig .yarnrc
