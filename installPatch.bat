@echo off 

where /Q git
if ERRORLEVEL 1 (
	echo You must install GIT.
	goto end
)

if not exist library/PackageCache/ (
	echo The script must be executed in a unity project
	goto end
)
cd library/PackageCache/

if not exist "com.unity.render-pipelines.universal*" (
	echo The unity project does not have any URP (Universal Render Pipelines^)
	goto end
)

curl "https://raw.githubusercontent.com/GPUOpen-Effects/FidelityFX-FSR-Unity-URP/c96f5b0843cd56132693953f190e54eb93b58849/FSR1.0-For-URP10.6.0-Patch.patch" --output FSR1.0-URP10.6.0.patch

for /D %%x in ("com.unity.render-pipelines.universal*") do (   
	rename %%x com.unity.render-pipelines.universal 
	
	git apply FSR1.0-URP10.6.0.patch
	
	rename com.unity.render-pipelines.universal %%x
)

del /q FSR1.0-URP10.6.0.patch 

:end
echo:
pause
exit
