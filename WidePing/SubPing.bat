@echo off
ping.exe 10.10.%1.%2 -n 1 >> temp.txt
if %errorlevel%==0 echo Ip-Address: 10.10.%1.%2 does exist >> Result.txt
exit
