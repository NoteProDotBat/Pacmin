:: [
:: █

@echo off
:: Change to the correct code-page
chcp 65001 >nul

setlocal ENABLEDELAYEDEXPANSION
setlocal ENABLEEXTENSIONS

title Pacmin %version%

:reset
set/a Pacnum = 44875
set/a vsblty = 40853
::set /a vsblty = %Pacnum% - 399 * 10 - 32
set/a Ghost=0
set/a Fnum=1
set/a ani=0

echo [?25l
:: determine if file name is correct
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
if %errorlevel%==2 call :Load 1000000
if %errorlevel%==3 call :Load 1000000
if %errorlevel%==4 call :Load 1000000
if %errorlevel%==5 call :Load 5
goto :play

:Credits
echo [14;3HGame created by   [101;93mNotePro[0m                             
echo [15;3H                                                      
echo [16;3HSpecial thanks to [101;93mKotsasmin[0m                           
echo [17;3H                                                      
timeout /t 5 /NOBREAK > nul
goto :menu
:Load
:: 91, 33
mode 91,33
cls
set "offset=0"
set "loop=0"
set "circlePart1=  .:::::.             .:::::.             .:::::.  "
set "circlePart2=.,:::::::,.         .,:::::::,.         .,:::::::,."
set "circlePart3=.:::::::::.         .:::::::::.         .:::::::::."
set "circlePart4=.:::::::::.         .:::::::::.         .:::::::::."
set "circlePart5= .,:::::,.           .,:::::,.           .,:::::,. "


:LoadAnimation
set/a offset+=1
if %offset% GEQ 20 set "offset=1" && set/a loop+= 1
set/a shown=%offset%+31
set/a x=60-%offset%

:: move the dots left and add from the right
echo.[13;%x%H!circlePart1:~0,%shown%!
echo.[14;%x%H!circlePart2:~0,%shown%!
echo.[15;%x%H!circlePart3:~0,%shown%!
echo.[16;%x%H!circlePart4:~0,%shown%!
echo.[17;%x%H!circlePart5:~0,%shown%!

:: Old load animation
REM echo.[13;51H!circlePart1:~%offset%,60!
REM echo.[14;51H!circlePart2:~%offset%,60!
REM echo.[15;51H!circlePart3:~%offset%,60!
REM echo.[16;51H!circlePart4:~%offset%,60!
REM echo.[17;51H!circlePart5:~%offset%,60!

:: put all onto one line?
:: Loading animation
if %offset% LEQ 4 (
	echo.[3;0H                   [33m...,::::::::,...
	echo.               .,,:::::::::::::::::::,,
	echo.            ,::::::::::::::::::::::::::::.
	echo.          ,:::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::.
	echo.      .:::::::::::::::::::::::::::::::::::::::,      
	echo.     ,:::::::::::::::::::::::::::::::::::::,         
	echo.    ,::::::::::::::::::::::::::::::::::::.           
	echo.   ,::::::::::::::::::::::::::::::::::,              
	echo.  .:::::::::::::::::::::::::::::::::.                
	echo.  ,:::::::::::::::::::::::::::::::,                  
	echo. .,::::::::::::::::::::::::::::.                     
	echo. .:::::::::::::::::::::::::::.                       
	echo. .:::::::::::::::::::::::::::.                       
	echo. .,::::::::::::::::::::::::::::.                     
	echo.  ,:::::::::::::::::::::::::::::::,                  
	echo.  .:::::::::::::::::::::::::::::::::.                
	echo.   ,::::::::::::::::::::::::::::::::::,              
	echo.    ,::::::::::::::::::::::::::::::::::::.           
	echo.     ,:::::::::::::::::::::::::::::::::::::,         
	echo.      .::::::::::::::::::::::::::::::::::::::.       
	echo.        ,::::::::::::::::::::::::::::::::::::,       
	echo.          ,::::::::::::::::::::::::::::::::,
	echo.            ,::::::::::::::::::::::::::::,
	echo.               .,,::::::::::::::::::,,.
	echo.                   ...,::::::::,...[0m
) ELSE if %offset% LEQ 8 (
	echo.[3;0H                   [33m...,::::::::,...
	echo.               .,,:::::::::::::::::::,,
	echo.            ,::::::::::::::::::::::::::::.
	echo.          ,:::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::.
	echo.      .::::::::::::::::::::::::::::::::::::::::,
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::.
	echo.   ,:::::::::::::::::::::::::::::::::::::,
	echo.  .:::::::::::::::::::::::::::::::::::.
	echo.  ,::::::::::::::::::::::::::::::::,
	echo. .,:::::::::::::::::::::::::::::.
	echo. .:::::::::::::::::::::::::::.
	echo. .:::::::::::::::::::::::::::.
	echo. .,:::::::::::::::::::::::::::::.
	echo.  ,::::::::::::::::::::::::::::::::,
	echo.  .:::::::::::::::::::::::::::::::::::.
	echo.   ,:::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::.
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.      .::::::::::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::,
	echo.          ,::::::::::::::::::::::::::::::::,
	echo.            ,::::::::::::::::::::::::::::,
	echo.               .,,::::::::::::::::::,,.
	echo.                   ...,::::::::,...[0m
) ELSE if %offset% LEQ 12 (
	echo.[3;0H                   [33m...,::::::::,...
	echo.               .,,:::::::::::::::::::,,
	echo.            ,::::::::::::::::::::::::::::.
	echo.          ,:::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::.
	echo.      .::::::::::::::::::::::::::::::::::::::::,
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::::::.
	echo.   ,::::::::::::::::::::::::::::::::::::::::::,
	echo.  .:::::::::::::::::::::::::::::::::::::::.
	echo.  ,:::::::::::::::::::::::::::::::::::,
	echo. .,::::::::::::::::::::::::::::::.
	echo. .:::::::::::::::::::::::::::.
	echo. .:::::::::::::::::::::::::::.
	echo. .,::::::::::::::::::::::::::::::.
	echo.  ,:::::::::::::::::::::::::::::::::::,
	echo.  .:::::::::::::::::::::::::::::::::::::::.
	echo.   ,::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::::::.
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.      .::::::::::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::,
	echo.          ,::::::::::::::::::::::::::::::::,
	echo.            ,::::::::::::::::::::::::::::,
	echo.               .,,::::::::::::::::::,,.
	echo.                   ...,::::::::,...[0m
) ELSE if %offset% LEQ 16 (
	echo.[3;0H                   [33m...,::::::::,...
	echo.               .,,:::::::::::::::::::,,
	echo.            ,::::::::::::::::::::::::::::.
	echo.          ,:::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::.
	echo.      .::::::::::::::::::::::::::::::::::::::::,
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::::::.
	echo.   ,::::::::::::::::::::::::::::::::::::::::::::::,
	echo.  .:::::::::::::::::::::::::::::::::::::::::::.
	echo.  ,::::::::::::::::::::::::::::::::::::::,
	echo. .,::::::::::::::::::::::::::::::::.
	echo. .:::::::::::::::::::::::::::.
	echo. .:::::::::::::::::::::::::::.
	echo. .,::::::::::::::::::::::::::::::::.
	echo.  ,::::::::::::::::::::::::::::::::::::::,
	echo.  .:::::::::::::::::::::::::::::::::::::::::::.
	echo.   ,::::::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::::::.
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.      .::::::::::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::,
	echo.          ,::::::::::::::::::::::::::::::::,
	echo.            ,::::::::::::::::::::::::::::,
	echo.               .,,::::::::::::::::::,,.
	echo.                   ...,::::::::,...[0m
) ELSE (
	echo.[3;0H                   [33m...,::::::::,...
	echo.               .,,:::::::::::::::::::,,
	echo.            ,::::::::::::::::::::::::::::.
	echo.          ,:::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::.
	echo.      .::::::::::::::::::::::::::::::::::::::::,
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::::::.
	echo.   ,::::::::::::::::::::::::::::::::::::::::::::::,
	echo.  .::::::::::::::::::::::::::::::::::::::::::::::::.
	echo.  ,::::::::::::::::::::::::::::::::::::::::::::::::,
	echo. .,::::::::::::::::::::::::::::::::::::::::::::::::,.
	echo. .::::::::::::::::::::::::::::::::::::::::::::::::::.
	echo. .::::::::::::::::::::::::::::::::::::::::::::::::::.
	echo. .,::::::::::::::::::::::::::::::::::::::::::::::::,.
	echo.  ,::::::::::::::::::::::::::::::::::::::::::::::::,
	echo.  .::::::::::::::::::::::::::::::::::::::::::::::::.
	echo.   ,::::::::::::::::::::::::::::::::::::::::::::::,
	echo.    ,::::::::::::::::::::::::::::::::::::::::::::.
	echo.     ,::::::::::::::::::::::::::::::::::::::::::,
	echo.      .::::::::::::::::::::::::::::::::::::::::.
	echo.        ,::::::::::::::::::::::::::::::::::::,
	echo.          ,::::::::::::::::::::::::::::::::,
	echo.            ,::::::::::::::::::::::::::::,
	echo.               .,,::::::::::::::::::,,.
	echo.                   ...,::::::::,...[0m
)
if %offset% == 19 timeout 1 >nul
if %loop% == %1 exit/b
goto:LoadAnimation


:play
set x=179
set y=102
set direction=0
mode 91, 33
call "Pacminboard.bat"
:Game
title Pacmin %version% x, %x% y, %y%

if %direction% == 0 echo [11;39H[33m█████████████[12;36H███████████████████[13;35H███[37m████[33m███████[37m████[33m███[14;34H████[37m█[30m██[37m█[33m███████[37m█[30m██[37m█[33m████[15;33H█████[37m████[33m███████[37m████[33m█████[16;33H█████████████████████████[17;33H█████████████████████████[18;33H█████████████████████████[19;34H███████████████████████[20;35H█████████████████████[21;36H███████████████████[22;39H█████████████[0m
if %direction% == 1 echo [11;39H[33m█████████████[12;36H███████████████████[13;35H█████████████████████[14;34H███████████████████████[15;33H█████████████████████████[16;33H█████████████████████████[17;33H█████████████████████████[18;33H█████[37m████[33m███████[37m████[33m█████[19;34H████[37m█[30m██[37m█[33m███████[37m█[30m██[37m█[33m████[20;35H███[37m████[33m███████[37m████[33m███[21;36H███████████████████[22;39H█████████████[0m
if %direction% == 2 echo [11;39H[33m█████████████[12;36H███████████████████[13;35H███[37m████[33m██████████████[14;34H████[37m█[30m██[37m█[33m███████████████[15;33H█████[37m████[33m████████████████[16;33H█████████████████████████[17;33H█████████████████████████[18;33H█████████████████████████[19;34H███████████████████████[20;35H█████████████████████[21;36H███████████████████[22;39H█████████████[0m
if %direction% == 3 echo [11;39H[33m█████████████[12;36H███████████████████[13;35H██████████████[37m████[33m███[14;34H███████████████[37m█[30m██[37m█[33m████[15;33H████████████████[37m████[33m█████[16;33H█████████████████████████[17;33H█████████████████████████[18;33H█████████████████████████[19;34H███████████████████████[20;35H█████████████████████[21;36H███████████████████[22;39H█████████████[0m


set /a x2 = %x% + 57
for /L %%A in (1, 1, 32) do (
	for %%B in (!y!) do (
		if %%A GEQ 11 (
			if %%A LEQ 22 (
				
				echo [%%A;0H!L%%B:~%x%,32![%%A;58H!L%%B:~%x2%,35!
			) ELSE (
				echo [%%A;0H!L%%B:~%x%,91!
			)
		) ELSE (
			echo [%%A;0H!L%%B:~%x%,91!
		)		
	)
	set/a y+=1
)


set/a y-=32
getinput
:: 0 = up, 1 = down, 2 = left, 3 = right
:: Key up pressed
if %errorlevel%==294 set direction=0 && if !y! GTR -4 (set/a y-=2) ELSE (set y=-4)
:: Key down pressed				175
if %errorlevel%==296 set direction=1 && if !y! LSS 185 (set/a y+=2) ELSE (set y=186)
:: Key left pressed
if %errorlevel%==293 set direction=2 && if !x! GTR 0 set/a x-=4
:: Key right pressed
if %errorlevel%==295 set direction=3 && if !x! LSS 360 set/a x+=4

:: getimput is stalling the code.

REM if %direction% == 0 if !y! GTR 2 (set/a y-=2) ELSE (set y=1)
REM if %direction% == 1 if !y! LSS 175 (set/a y+=2) ELSE (set y=176)
REM if %direction% == 2 if !x! GTR 0 set/a x-=4
REM if %direction% == 3 if !x! LSS 308 set/a x+=4

:: Check for collision with walls
call :CheckCollision

goto:Game

:CheckCollision
:: Note, tempX/Y are always bigger than nextX/Y in order for the for loops to work.
:: 0 = up, 1 = down, 2 = left, 3 = right
if %direction% == 0 (
	set /a tempY = y + 12
	set /a tempX = x + 32
    set /a nextY = y - 2 + 12
    set /a nextX = x + 32
	set /a adjustX = 24
	set /a adjustY = 0
)
if %direction% == 1 (
	set /a tempY = y + 2 + 19
	set /a tempX = x + 32
    set /a nextY = y + 19
    set /a nextX = x + 32
	set /a adjustX = 24
	set /a adjustY = 0
)
if %direction% == 2 (
	set /a tempY = y + 10
	set /a tempX = x + 36
    set /a nextY = y + 10
    set /a nextX = x - 4 + 36
	set /a adjustX = 0
	set /a adjustY = 11
)
if %direction% == 3 (
	set /a tempY = y + 10
	set /a tempX = x + 4 + 32 + 20
    set /a nextY = y + 10
    set /a nextX = x + 32 + 20
	set /a adjustX = 0
	set /a adjustY = 11
)

:: Check if Pacman is hitting a wall
set "collision=false"
:: echo %nextY% , %tempY%
for /L %%i in (%nextY%,1,%tempY%) do (
    for /L %%j in (%nextX%,2,%tempX%) do (
        if "!L%%i:~%%j,1!" neq " " (
            set "collision=true"
            goto :endCollision
			goto :eof
        )
    )
)

set /a nextX += %adjustX%
set /a tempX += %adjustX%
set /a nextY += %adjustY%
set /a tempY += %adjustY%

for /L %%i in (%nextY%,1,%tempY%) do (
    for /L %%j in (%nextX%,2,%tempX%) do (
        if "!L%%i:~%%j,1!" neq " " (
            set "collision=true"
            goto :endCollision
			goto :eof
        )
    )
)

set /a nextX -= %adjustX% / 2
set /a tempX -= %adjustX% / 2
set /a nextY -= %adjustY% / 2
set /a tempY -= %adjustY% / 2

for /L %%i in (%nextY%,1,%tempY%) do (
    for /L %%j in (%nextX%,2,%tempX%) do (
        if "!L%%i:~%%j,1!" neq " " (
            set "collision=true"
            goto :endCollision
			goto :eof
        )
    )
)

goto :eof

:endCollision
:: Handle collision behavior if needed here
if "%collision%"=="true" (
    if %direction% == 0 set /a y += 2
	if %direction% == 1 set /a y -= 2
	if %direction% == 2 set /a x += 4
	if %direction% == 3 set /a x -= 4
)
:: Update Pacman's position above
goto :eof
