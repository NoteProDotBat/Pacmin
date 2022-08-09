echo.
::echo %info%
::pause
for /F "usebackq tokens=1,2 delims==" %%A in ("set.txt") do (
	if !info!==%%A (
		echo %%A=%%B
		%%A=%%B
		exit /b
	)
)
echo Could not find "%1" in set.txt
pause> nul