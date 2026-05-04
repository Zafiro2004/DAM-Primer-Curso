@echo off
cd /d C:\DAM2526
git add .
set /p msg=Introduce el mensaje del commit: 
git commit -m "%msg%"
git push
pause
