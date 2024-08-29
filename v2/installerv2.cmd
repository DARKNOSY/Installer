@echo off
title Installer V2 > DARKNOSY
echo Starting installation of essential applications...

echo Installing Opera GX...
start /wait "" "https://www.opera.com/computer/thanks?ni=eapgx&os=windows" /silent /install
pause

echo Installing Opera...
start /wait "" "https://www.opera.com/computer/thanks?ni=stable&os=windows" /silent /install
pause

echo Installing Discord...
start /wait "" "https://discord.com/api/download?platform=win" /S
pause

echo Installing Telegram...
start /wait "" "https://telegram.org/dl/desktop/win" /silent
pause

echo Installing GeForce Experience...
start /wait "" "https://www.nvidia.com/en-us/geforce/geforce-experience/download/" /silent
pause

echo Installing Steam...
start /wait "" "https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe" /S
pause

echo Installing Git...
start /wait "" "https://github.com/git-for-windows/git/releases/download/v2.45.2.windows.1/Git-2.45.2-64-bit.exe" /SILENT
pause

echo Installing Python...
start /wait "" "https://www.python.org/ftp/python/3.12.4/python-3.12.4-amd64.exe" /quiet InstallAllUsers=1 PrependPath=1
pause

echo Installing HTTP Toolkit...
start /wait "" "https://httptoolkit.com/download/win-exe/"
pause

echo Installing Visual Studio Code...
start /wait "" "https://update.code.visualstudio.com/latest/win32-x64-user/stable" /silent
pause

echo Installing Windscribe...
start /wait "" "https://windscribe.com/install/desktop/windows" /silent
pause

echo Installing WinRAR...
start /wait "" "https://www.win-rar.com/postdownload.html?&L=0" /S
pause

echo All installations completed!
pause
