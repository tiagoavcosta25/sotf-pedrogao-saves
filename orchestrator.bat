@echo off

:loop

call fetch_save.bat
call commit.bat

:: 30mins
timeout /t 1800

goto loop
