@echo off
REM Abrir pastas e arquivos mais r�pido
reg add "hklm\SYSTEM\CurrentControlSet\Control\FileSystem" /v ContigFileAllocSize /d "200" /f
exit