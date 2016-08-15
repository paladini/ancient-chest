//deletar pista "Napa"
@echo off
cd ..
md backup
copy DATA\COURSES BACKUP
del /f /s /q DATA\COURSES\NAPA.CRS

