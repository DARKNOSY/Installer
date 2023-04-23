@echo off
mode 160,50
title Installer: Page 5/6 @DARKNOSY
:menu
cls
type menu5.txt
color e

set /p action=
if '%action%'=='1' goto FF
if '%action%'=='2' goto Python
if '%action%'=='3' goto FDM
if '%action%'=='4' goto VM
if '%action%'=='5' goto VA
if '%action%'=='6' goto I
if '%action%'=='7' goto Credits
if '%action%'=='8' goto NP
if '%action%'=='9' goto PP
if '%action%'=='10' goto Quit

:VM
explorer "https://www.voicemod.net/downloadVoicemodAccount.php"
goto menu

:VA
explorer "https://voice.ai/app-download"
goto menu

:I
explorer "https://updates.insomnia.rest/downloads/windows/latest?app=com.insomnia.app&source=website"
goto menu

:FF
start %cd%\Softwares\Firefox Installer.exe
goto menu

:Python
cls
echo Downloading Python 3.11.1...
for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/ -UseBasicParsing | Select-String -Pattern '3.11.1' -AllMatches | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value | Sort-Object -Descending -Unique | Select-Object -First 1"') do (
    set "PYTHON_VERSION=%%a%%b"
)
set "PYTHON_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe"
set "PYTHON_EXE=python-installer.exe"
curl -L -o %PYTHON_EXE% %PYTHON_URL%
start /wait %PYTHON_EXE% /quiet /passive InstallAllUsers=0 PrependPath=1 Include_test=0 Include_pip=1 Include_doc=0
del %PYTHON_EXE%
goto menu

:Credits
explorer "https://github.com/DARKNOSY"
goto menu

:PP
start Installer4.bat
exit

:NP
start Installer6.bat
exit

:FDM
start %cd%\Softwares\fdm_x64_setup.exe
goto menu

:Quit
SET msgboxTitle=Installer @DARKNOSY
SET msgboxBody=Thank you for using Installer!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Exit 