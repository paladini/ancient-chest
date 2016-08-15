@echo off
REM Esperar menos ao desligar computador
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop\" /v WaitToKillAppTimeout /t REG_SZ /d 1000 /f
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop\" /v HungAppTimeout /t REG_SZ /d 1000 /f
exit
