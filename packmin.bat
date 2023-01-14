:: [

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

if NOT EXIST "%USERPROFILE%\Desktop\Pacmin" (
	md "%USERPROFILE%\Desktop\Pacmin"
	md "%USERPROFILE%\Desktop\Pacmin\files"
	md "%USERPROFILE%\Desktop\Pacmin\files\load"
)
::pause
::echo DONT!!
::pause
::pause
::choice /c 8 /n /m "DON'T!! make sure \load!!!"
:: remember to have all of the render files downloaded
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\batbox.exe" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"

::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\box.bat" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\box.bat" "https://drive.google.com/uc?id=1orlAdSW8llmSzG1Ns7_j0ZQoN0jwICyX&export=download"

::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\Button.bat" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\Button.bat" "https://drive.google.com/uc?id=14Dg79351nWm_VeZpmpePatwb9EQgtCmm&export=download"

::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\GetInput.exe" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\GetInput.exe" "https://drive.google.com/uc?id=1kCRPl5XtHUGFROwVDCAY9lHoxY6yrM2X&export=download"

::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\Getlen.bat" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\Getlen.bat" "https://drive.google.com/uc?id=19SbhQZSHws24bvsWKXYTsP4OVHL8hko4&export=download"

::::::::::::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\Pacmin.bat" curl -s -o "%USERPROFILE%\Desktop\Pacmin\Pacmin.bat" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"

::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin1.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin2.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin3.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin4.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin5.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin6.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin7.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin8.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin9.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin10.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin11.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin12.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin13.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin14.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin15.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin16.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin17.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin18.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin19.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\load\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\load\Pacmin20.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\batbload\ox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\render1.bat" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\set.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\view.bat" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"
::if NOT EXIST "%USERPROFILE%\Desktop\Pacmin\files\Work Log.txt" curl -s -o "%USERPROFILE%\Desktop\Pacmin\files\batbox.exe" "https://drive.google.com/uc?id=1MjdtU-EHj4xPETGV5I6I232hdrXaspqN&export=download"

::goto :menu

echo [?25l
mode 58, 39

echo.
:: ::█
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
call Button 2 13 B0 "                      Credits                     " 2 18 B0 "                     Customize                    " 2 23 B0 "                     Settings                     " 2 28 B0 "                    How to play                   " 2 33 B0 "                       Play                       " X _Var_Box _Var_Hover
GetInput /M %_Var_Box% /H %_Var_Hover%s

:: Buttons 2,6,10,14
if %errorlevel%==1 goto :Credits
if %errorlevel%==2 call :Load 100000
if %errorlevel%==3 goto :Load
if %errorlevel%==1 goto :Load
if %errorlevel%==5 call :Load 4
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
:LoadAni
echo [0;0H
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::CHANGE!!!!
type "C:\Users\irons\Desktop\CMD files\PacminLoad\animation\Pacmin%Fnum%.txt"
set /a Fnum = %Fnum% + 1
if %Fnum% GEQ 21 set /a Fnum = 1
ping 0 -n 1 -w 1 > nul
if %Fnum%==2 (
	set/a ani+=1
)
if %ani% GEQ %1 exit /b
goto :LoadAni

:play
set x=0
set y=1
set yNum=32
mode 92, 34
call "Pacminboard.bat"
:Game
set yNum=!y!
for /L %%A in (1, 1, 32) do (
	call :Render %%A
)
getinput
:: Key up pressed
if %errorlevel%==294 if !y! GTR 1 set /a y-=1
:: Key down pressed
if %errorlevel%==296 if !y! LSS 207 set /a y+=1
:: Key left pressed
if %errorlevel%==293 if !x! GTR 0 set /a x-=1
:: Key right pressed
if %errorlevel%==295 if !x! LSS 308 set /a x+=1
goto :Game

:Render
echo [%~1;0H!L%yNum%:~%x%,91!
set/a yNum+=1
exit/b
