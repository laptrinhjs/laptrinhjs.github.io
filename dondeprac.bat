@echo off

rd %temp% /s /q
md %temp%

rd C:\Windows\Temp /s /q
md C:\Windows\Temp

cd /D C:\users
for /D %%a in (*.*) do DEL /F /S /Q "%%a\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
for /D %%a in (*.*) do FOR /D %%b IN ("%%a\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*") DO RMDIR /S /Q "%%b"