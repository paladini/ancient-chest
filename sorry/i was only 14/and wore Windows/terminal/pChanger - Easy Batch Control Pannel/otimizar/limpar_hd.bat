@echo off
REM Liberar espaço do Hard Disk Drive (HD)
reg add "hklm\System\CurrentControlSet\Control\FileSystem" /v NtfsMftZoneReservation /t Reg_Dword /d "2" /f
exit