setloal ENABLEDELAYEDEXPANSION
set "info="
set /a i=1
for /F "usebackq tokens=1 delims=" %%A in ("C:\Users\irons\Desktop\CMD files\PackminLoad\Packminboard2.txt") do (
(
echo %info%
echo set "%i%=%%A"
)>"C:\Users\irons\Desktop\CMD files\PackminLoad\set.txt"
set "info=%%A"
echo %info%
call :update
)
pause

:update
::set "info=%!i!%"
::set /a i=%i%+1
::echo %1%
pause
exit /b