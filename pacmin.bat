:: [
:: █
:: Instead of using a hitbox, make user unable to get off of lines in the middle of the empty space where sprite can move

@echo off

chcp 65001 > nul

setlocal ENABLEDELAYEDEXPANSION
setlocal ENABLEEXTENSIONS

title Pacmin %version%

:reset
set /a Pacnum = 44875
set /a vsblty = 40853
::set /a vsblty = %Pacnum% - 399 * 10 - 32
set /a Ghost = 0
set /a Fnum = 1
set /a ani = 0

echo [?25l

if /I NOT "%~nx0"=="Pacmin.bat" (
	echo Please rename the file to "Pacmin.bat".
	pause > nul
	title Wrong file name!
	call :Load -1
)

if NOT EXIST "C:\Pacmin" (
	md "C:\Pacmin"
	md "C:\Pacmin\files"
	echo.
	echo [0;0H
	echo [4mWelcome[0m
	timeout 1 /NOBREAK > nul
	echo [0;0H
	echo.[4m       [0m           
	timeout 1 /NOBREAK > nul
	echo [0;0H
	echo [4mWelcome to[0m
	timeout 1 /NOBREAK > nul
	echo [0;0H
	echo.[4m          [0m        
	timeout 1 /NOBREAK > nul
	echo [0;0H
	echo [4mWelcome to Pacmin[0m
	timeout 1 /NOBREAK > nul
)
:: Game Files
if NOT EXIST "C:\Pacmin\Pacmin.bat" curl -s -o "C:\Pacmin\Pacmin.bat" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/Pacmin.bat"
if NOT EXIST "C:\Pacmin\files\Pacminboard.bat" curl -s -o "C:\Pacmin\files\Pacminboard.bat" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/Pacminboard.bat"
:: Button Files - .exe
if NOT EXIST "C:\Pacmin\files\GetInput.exe" curl -s -o "C:\Pacmin\files\GetInput.exe" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/GetInput.exe"
if NOT EXIST "C:\Pacmin\files\batbox.exe" curl -s -o "C:\Pacmin\files\batbox.exe" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/batbox.exe"
:: Button Files - .bat
if NOT EXIST "C:\Pacmin\files\Box.bat" curl -s -o "C:\Pacmin\files\Box.bat" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/Box.bat"
if NOT EXIST "C:\Pacmin\files\Button.bat" curl -s -o "C:\Pacmin\files\Button.bat" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/Button.bat"
if NOT EXIST "C:\Pacmin\files\Getlen.bat" curl -s -o "C:\Pacmin\files\Getlen.bat" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/Getlen.bat"

if NOT EXIST "C:\Pacmin\files\Work Log.txt" curl -s -o "C:\Pacmin\files\Work Log.txt" "https://raw.githubusercontent.com/NoteProDotBat/Pacmin/main/Work Log.txt"

cd..
cd "C:\Pacmin\files"

echo [?25l
mode 58, 39


:GOst

if %Ghost%==0 set /a xpos = %xpos% + 1
if %Ghost%==1 set /a xpos = %xpos% - 6

echo [5;%xpos%H       ██████ 
echo [6;%xpos%H     ██████████  
echo [7;%xpos%H    ████████████  
echo [8;%xpos%H   ██████████████  
echo [9;%xpos%H   ██████████████  
echo [10;%xpos%H   ██████████████  
echo [11;%xpos%H  ████████████████  
echo [12;%xpos%H  ████████████████  
echo [13;%xpos%H  ████████████████  
echo [14;%xpos%H  ████████████████  
echo [15;%xpos%H  ████████████████  
echo [16;%xpos%H  ████████████████  
echo [17;%xpos%H  ██ █████ █████ ██  
echo [18;%xpos%H  █   ███   ███   █  
ping 0 -n 1 -w 1 > nul
if %xpos% GEQ 40 (
	set /a Ghost=1
	echo [5;3H[33m  █████[37m███[0m
	echo [6;3H[33m ██████[37m█[30m█[37m█[0m
	echo [7;3H[33m ██████[37m███[0m
	echo [8;3H[33m ███████[0m
	echo [9;3H[33m  ███████[0m
	timeout 1 /NOBREAK > nul
)
if %xpos% LEQ 4 if %Ghost%==1 goto :menu
goto :GOst
pause> nul
:menu
mode 58,39 > nul
echo [0;0H
::Set up buttons!! :: call Button "x,y" color, text
echo  ▓▓▓▓▓▓      ▓▓▓▓      ▓▓▓▓    ▓▓      ▓▓  ▓▓  ▓▓      ▓▓
echo  ▓▓▓▓▓▓      ▓▓▓▓      ▓▓▓▓    ▓▓      ▓▓  ▓▓  ▓▓      ▓▓
echo  ▓▓▒▒▒▒▓▓  ▓▓▒▒▒▒▓▓  ▓▓▒▒▒▒▓▓  ▓▓▓▓  ▓▓▓▓  ▓▓  ▓▓▓▓    ▓▓
echo  ▓▓    ▓▓  ▓▓    ▓▓  ▓▓    ▓▓  ▓▓▓▓  ▓▓▓▓  ▓▓  ▓▓▓▓    ▓▓
echo  ▓▓▓▓▓▓▒▒  ▓▓▓▓▓▓▓▓  ▓▓    ▒▒  ▓▓▒▒▓▓▒▒▓▓  ▓▓  ▓▓▒▒▓▓  ▓▓
echo  ▓▓▓▓▓▓    ▓▓▓▓▓▓▓▓  ▓▓        ▓▓  ▓▓  ▓▓  ▓▓  ▓▓  ▓▓  ▓▓
echo  ▓▓▒▒▒▒    ▓▓▒▒▒▒▓▓  ▓▓    ▓▓  ▓▓  ▒▒  ▓▓  ▓▓  ▓▓  ▒▒▓▓▓▓
echo  ▓▓        ▓▓    ▓▓  ▓▓    ▓▓  ▓▓      ▓▓  ▓▓  ▓▓    ▓▓▓▓
echo  ▓▓        ▓▓    ▓▓  ▒▒▓▓▓▓▒▒  ▓▓      ▓▓  ▓▓  ▓▓    ▒▒▓▓
echo  ▓▓        ▓▓    ▓▓    ▓▓▓▓    ▓▓      ▓▓  ▓▓  ▓▓      ▓▓
echo  ▒▒        ▒▒    ▒▒    ▒▒▒▒    ▒▒      ▒▒  ▒▒  ▒▒      ▒▒
echo  [34m╔══════════════════════════════════════════════════════╗
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[46m                                                      [0;34m║
echo  ╠══════════════════════════════════════════════════════╣
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[46m                                                      [0;34m║
echo  ╠══════════════════════════════════════════════════════╣
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[46m                                                      [0;34m║
echo  ╠══════════════════════════════════════════════════════╣
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[46m                                                      [0;34m║
echo  ╠══════════════════════════════════════════════════════╣
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[106m                                                      [0;34m║
echo  ║[46m                                                      [0;34m║
echo  ╚══════════════════════════════════════════════════════╝[0m
call Button 2 13 B0 "                      Credits                     " 2 18 B0 "                     Customize                    " 2 23 B0 "                     Settings                     " 2 28 B0 "                    How to play                   " 2 33 B0 "                       Play                       " X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%s

:: Buttons 2,6,10,14
if %errorlevel%==1 goto :Credits
if %errorlevel%==2 call :Load 100000
if %errorlevel%==3 goto :Load
if %errorlevel%==1 goto :Load
if %errorlevel%==5 call :Load 12
goto :play

:Credits
echo [14;3HGame created by   [101;93mNotePro[0m                             
echo [15;3H                                                      
echo [16;3HSpecial thanks to [101;93mKotsasmin[0m                           
echo [17;3H                                                      
timeout /t 5 /NOBREAK > nul
goto :menu
:Load
mode 113,33
cls
:: Please! Take the time to use escape code sequences instead of typing files.
set "circlePart1=           .:::::.             .:::::.             .:::::.             .:::::.  "
set "circlePart2=         .,:::::::,.         .,:::::::,.         .,:::::::,.         .,:::::::,."
set "circlePart3=         .:::::::::.         .:::::::::.         .:::::::::.         .:::::::::."
set "circlePart4=         .:::::::::.         .:::::::::.         .:::::::::.         .:::::::::."
set "circlePart5=          .,:::::,.           .,:::::,.           .,:::::,.           .,:::::,. "

:: You can put this in a file and only type it once.

echo.[3;0H                              [33m...,::::::::,...
echo.                          .,,:::::::::::::::::::,,
echo.                       ,::::::::::::::::::::::::::::.
echo.                     ,:::::::::::::::::::::::::::::::::.
echo.                   ,::::::::::::::::::::::::::::::::::::,.
echo.                 .::::::::::::::::::::::::::::::::::::::,
echo.                ,:::::::::::::::::::::::::::::::::::::.
echo.               ,::::::::::::::::::::::::::::::::::::.
echo.              ,::::::::::::::::::::::::::::::::::,
echo.             .:::::::::::::::::::::::::::::::::,
echo.             ,:::::::::::::::::::::::::::::::.
echo.            .,::::::::::::::::::::::::::::,
echo.            .:::::::::::::::::::::::::::,
echo.            .:::::::::::::::::::::::::::,
echo.            .,::::::::::::::::::::::::::::,
echo.             ,:::::::::::::::::::::::::::::::.
echo.             .:::::::::::::::::::::::::::::::::,
echo.              ,::::::::::::::::::::::::::::::::::,
echo.               ,::::::::::::::::::::::::::::::::::::.
echo.                ,:::::::::::::::::::::::::::::::::::::.
echo.                 .::::::::::::::::::::::::::::::::::::::,.
echo.                   ,::::::::::::::::::::::::::::::::::::,.
echo.                     ,:::::::::::::::::::::::::::::::::.
echo.                       ,::::::::::::::::::::::::::::.
echo.                          .,,:::::::::::::::::::,,
echo.                              ...,::::::::,...[0m

:LoadAnimation
set/a offset+=1
if %offset% GEQ 20 set "offset=1" && set/a loop+= 1
echo.[13;48H!circlePart1:~%offset%,60!
echo.[14;48H!circlePart2:~%offset%,60!
echo.[15;48H!circlePart3:~%offset%,60!
echo.[16;48H!circlePart4:~%offset%,60!
echo.[17;48H!circlePart5:~%offset%,60!
if "%loop%" GEQ "%1" exit/b
goto:LoadAnimation


:play
set x=0
set y=1
mode 92, 34
call "Pacminboard.bat"
:Game
for /L %%A in (1, 1, 32) do (
	for /L %%B in (!y!, 1, !y!) do (
		echo [%%A;0H!L%%B:~%x%,91!
	)
	set/a y+=1
)
set/a y-=32
getinput
:: Key up pressed
if %errorlevel%==294 if !y! GTR 2 (set/a y-=2) ELSE (set y=1)
:: Key down pressed
if %errorlevel%==296 if !y! LSS 175 (set/a y+=2) ELSE (set y=176)
:: Key left pressed
if %errorlevel%==293 if !x! GTR 0 set/a x-=4
:: Key right pressed
if %errorlevel%==295 if !x! LSS 308 set/a x+=4
goto:Game
