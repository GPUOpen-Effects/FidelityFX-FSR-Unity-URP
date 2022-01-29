@echo off 

where /Q git
if ERRORLEVEL 1 (
	echo You must install GIT.
	goto end
)

cd library/PackageCache/
if exist com.unity.render-pipelines.universal goto install


echo The unity project does not have an compatible URP (Universal Render Pipelines^)
:option
set /p continue= Try to install anyway ? (Y/N) 

if %continue% == N exit
if %continue% neq Y (
	echo Invalid option
	goto option
)

:install
curl "https://raw.githubusercontent.com/GPUOpen-Effects/FidelityFX-FSR-Unity-URP/c96f5b0843cd56132693953f190e54eb93b58849/FSR1.0-For-URP10.6.0-Patch.patch" | git apply

:end
echo:
pause
exit
