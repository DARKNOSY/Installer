@echo off
mode 160,50
title Installer: Page 6/6 @DARKNOSY
:menu
cls
type menu6.txt
color f

set /p action=
if '%action%'=='1' goto GD
if '%action%'=='2' goto HT
if '%action%'=='3' goto P
if '%action%'=='4' goto OGX
if '%action%'=='5' goto R
if '%action%'=='6' goto UC
if '%action%'=='7' goto PY
if '%action%'=='8' goto Credits
if '%action%'=='9' goto PP
if '%action%'=='10' goto Quit

:GD
explorer "https://central.github.com/deployments/desktop/desktop/latest/win32"
goto menu

:UC
explorer "https://ubi.li/4vxt9"

:PY
cls
echo Downloading Python 3.10.9...
for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/ -UseBasicParsing | Select-String -Pattern '3.10.9' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value | Sort-Object -Descending -Unique | Select-Object -First 1"') do (
    set "PYTHON_VERSION=%%a%%b"
)
set "PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe"
set "PYTHON_EXE=python-installer.exe"
curl -L -o %PYTHON_EXE% %PYTHON_URL%
start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0
del %PYTHON_EXE%
goto menu

:HT
explorer "https://httptoolkit.com/download/win-exe/"
goto menu

:Credits
explorer "https://github.com/DARKNOSY"
goto menu

:PP
start Installer3.bat
exit

:Quit
SET msgboxTitle=Installer @DARKNOSY
SET msgboxBody=Thank you for using Installer!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Exit 

:P
explorer "https://protonvpn.com/download/ProtonVPN_win_v2.4.1.exe"
goto menu

:OGX
explorer "https://www.opera.com/en/computer/thanks?ni=eapgx&os=windows"
goto menu

:R
explorer "https://www.roblox.com/games/5373028495/LGBTQ-Hangout"
explorer "https://en.help.roblox.com/hc/en-us/articles/204473560-How-to-Install-and-Play-Roblox-Using-Browser"
goto menu