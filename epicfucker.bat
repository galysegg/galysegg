@ECHO OFF
title epic fucker 


SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

:menuLOOP

echo.--------------
echo.- epic fucker by shxp#9381 -
echo.--------------
echo.
for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do echo.  %%B  %%C
set choice=
echo.&set /p choice= Please select your choice:  ||GOTO:EOF
echo.&call:menu_%choice%

GOTO:menuLOOP

::-----------------------------------------------------------
:: menu functions follow below here
::-----------------------------------------------------------

:menu_1   Force BattlEye
cls
echo.1) Make sure you are logged into your Epic account or this will not work.
echo.2) This bruteforces until the selected anti-cheat loads.
echo.3) Please be patient while the script runs.
echo.
pause
cls

echo.Opening Fortnite process
taskkill /IM EasyAntiCheat.exe
net stop beservice
taskkill /IM FortniteClient-Win64-Shipping_BE.exe
start "" "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteLauncher.exe"

cls
echo.Scanning processes

@ECHO OFF

:BA

SET MyProcess1=EasyAntiCheat.exe
ECHO Scanning for "%MyProcess1%"
TASKLIST | FINDSTR /I "%MyProcess1%"
IF ERRORLEVEL 1 (GOTO :D) ELSE (GOTO :EAC1)

:D

SET MyProcess2=BEservice.exe
ECHO Scanning for "%MyProcess2%"
TASKLIST | FINDSTR /I "%MyProcess2%"
IF ERRORLEVEL 1 (GOTO :BA) ELSE (GOTO :BE1)

GOTO :BA

:EAC1
echo.Process found.
taskkill /IM EasyAntiCheat.exe
Rem add date changer +1 day
start "" "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteLauncher.exe"
taskkill /IM FortniteClient-Win64-Shipping_EAC.exe
GOTO :B 

:BE1
echo. BattlEye successfullly launched.
pause
cls
GOTO:menuLOOP


:menu_2   Force EasyAntiCheat
cls
echo.1) Make sure you are logged into your Epic account or this will not work.
echo.2) This bruteforces until the selected anti-cheat loads.
echo.3) Please be patient while the script runs.
echo.

pause
cls

echo.Opening Fortnite process
taskkill /IM EasyAntiCheat.exe
net stop beservice
taskkill /IM FortniteClient-Win64-Shipping_BE.exe
start "" "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteLauncher.exe"

cls
echo.Scanning processes

@ECHO OFF

:B

SET MyProcess1=BEservice.exe
ECHO Scanning for "%MyProcess1%"
TASKLIST | FINDSTR /I "%MyProcess1%"
IF ERRORLEVEL 1 (GOTO :C) ELSE (GOTO :EAC)

:C

SET MyProcess2=EasyAntiCheat.exe
ECHO Scanning for "%MyProcess2%"
TASKLIST | FINDSTR /I "%MyProcess2%"
IF ERRORLEVEL 1 (GOTO :B) ELSE (GOTO :BE)

GOTO :B 

:EAC
echo.Process found.
net stop beservice
taskkill /IM FortniteClient-Win64-Shipping_BE.exe
Rem add date changer +1 day
start "" "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteLauncher.exe"
net stop beservice
taskkill /IM FortniteClient-Win64-Shipping_BE.exe
GOTO :B 

:BE
echo. EAC successfullly launched.
pause
cls
GOTO:menuLOOP
