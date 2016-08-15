@echo off
start C:\Windows\msagentinstall\install\MSagent.exe
ping -n 6 127.0.0.0 >nul
echo @echo off >>1.bat
echo start C:\Windows\msagentinstall\install\lhttsptb.exe >>1.bat
start 1.bat
exit
exit