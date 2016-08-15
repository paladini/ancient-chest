@echo off
REM Abrir pastas mais rápido
cd C:\WINDOWS
echo ; for 16-bit app support > system.ini
echo. >> system.ini
echo.[drivers] >> system.ini
echo wave=mmdrv.dll >> system.ini
echo timer=timer.drv >> system.ini
echo. >> system.ini
echo [mci] >> system.ini
echo [driver32] >> system.ini
echo [386enh] >> system.ini
echo conservativeswapfileusage=1 >> system.ini
echo woafont=app850.FON >> system.ini
echo EGA80WOA.FON=EGA80850.FON >> system.ini
echo EGA40WOA.FON=EGA40850.FON >> system.ini
echo CGA80WOA.FON=CGA80850.FON >> system.ini
echo CGA40WOA.FON=CGA40850.FON >> system.ini
exit