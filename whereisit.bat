@echo off
if ""%2=="" if "%1"=="/?" echo.Syntax--   [ScriptName] "String_here" "[Single Character C]"&echo.           C-- Character to Find&echo.Result--   Index location of character in String (starting from 1)
setlocal enabledelayedexpansion
set str=%1
set char=%2
for /l %%i in (0,1,200) do set temp=!str:~%%i,1!&if /i "!temp!"==%char% echo.%%i