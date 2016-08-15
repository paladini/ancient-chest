cls
set path="C:\Program Files\WinRAR\";%path%
MD lang
ren *.lang en_US.lang
copy en_US.lang lang
move lang %appdata%\.minecraft\bin
CD %appdata%
CD .minecraft
CD bin
MD Backup
copy minecraft.jar Backup\minecraft_backup.jar
copy minecraft.jar minecraft.rar
WinRAR d minecraft META-INF
WinRAR a -r minecraft.rar lang
copy minecraft.rar minecraft.jar
del /q minecraft.rar
del /q /f lang
del lang\en_US.lang
pause