:: [

@echo off

chcp 65001 > nul

setlocal ENABLEDELAYEDEXPANSION
setlocal ENABLEEXTENSIONS

::call Pacset
::if %errorlevel% NEQ 100 echo.Something went wrong && pause && exit

title Packmin %version% 

:reset
:: x = 50
set /a Ghost = 0
set /a x = 58
set /a y = 40
set /a Fnum = 1

echo [?25l
mode %x%, %y%

echo.
:: ::█
echo [0;0H
echo [4mWelcome[0m
timeout /t 1 /NOBREAK > nul
echo [0;0H
echo.[4m       [0m           
timeout /t 1 /NOBREAK > nul
echo [0;0H
echo [4mWelcome to[0m
timeout /t 1 /NOBREAK > nul
echo [0;0H
echo.[4m          [0m        
timeout /t 1 /NOBREAK > nul
echo [0;0H
echo [4mWelcome to Packmin[0m
timeout /t 1 /NOBREAK > nul
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
	timeout /t 1 /NOBREAK > nul
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
echo  ║[46m                                                      [0m[34m║
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

::echo  ▓▓▓ ▓▓▓ ▓▓▓ ▓ ▓  ▓   ▓  ▓▓▓ ▓  ▓   ░
::echo  ▓ ▓ ▓ ▓ ▓   ▓ ▓ ▓ ▓ ▓ ▓ ▓ ▓ ▓▓ ▓
::echo  ▓▓▓ ▓▓▓ ▓   ▓▓  ▓  ▓  ▓ ▓▓▓ ▓ ▓▓
::echo  ▓   ▓ ▓ ▓▓▓ ▓ ▓ ▓     ▓ ▓ ▓ ▓  ▓
call Button 7 -1 00 " " 2 13 B0 "                      Credits                     " 7 -1 00 " " 7 -1 00 " " 7 -1 00 " " 2 18 B0 "                     Customize                    " 7 -1 00 " " 7 -1 00 " " 7 -1 00 " " 2 23 B0 "                     Settings                     " 7 -1 00 " " 7 -1 00 " " 7 -1 00 " "  2 28 B0 "                    How to play                   " 7 -1 00 " " 7 -1 00 " " 7 -1 00 " " 2 33 B0 "                       Play                       " X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%s

:: Buttons 2,6,10,14
if %errorlevel%==2 goto :Credits
if %errorlevel%==6 goto :Load
if %errorlevel%==10 goto :Load
if %errorlevel%==14 goto :Load
if %errorlevel%==18 goto :Load

:Credits
echo [14;3HGame created by   [101;93mNotePro[0m                             
echo [15;3H                                                      
echo [16;3HSpecial thanks to [101;93mKotsasmin[0m                           
echo [17;3H                                                      
timeout /t 5 /NOBREAK > nul
goto :menu
:Load
mode 113,30
: LoadAni
set RTC=%time%
echo [0;0H
::type "C:\Users\irons\Desktop\CMD files\PackminLoad\packmin%Fnum%.txt"
type "packmin%Fnum%.txt"
set /a Fnum = %Fnum% + 1
if %Fnum% GEQ 21 set /a Fnum = 1
ping 0 -n 1 -w 1 > nul
goto :LoadAni