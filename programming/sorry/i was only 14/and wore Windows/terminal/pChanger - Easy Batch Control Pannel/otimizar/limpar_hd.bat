@echo off
REM Liberar espa�o do Hard Disk Drive (HD)
reg add "hklm\System\CurrentControlSet\Control\FileSystem" /v NtfsMftZoneReservation /t Reg_Dword /d "2" /f
exit