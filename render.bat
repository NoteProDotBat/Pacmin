for /F "usebackq tokens=1,2 delims==" %%A in ("set.txt") do (
	if !info!==%%A (
		set x!x!y!y!=%%B
		exit /b
	)
)
echo Could not find "%info%" in set.txt
pause> nul