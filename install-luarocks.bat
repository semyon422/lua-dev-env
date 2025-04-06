@echo off
IF [%TREE%] == [] call setenv-mingw.bat

set DIRNAME=luarocks-3.11.1-windows-64
set URL=https://luarocks.github.io/luarocks/releases/%DIRNAME%.zip

sh -c ". ./setenv-linux; wget %URL%; unzip %DIRNAME%"

move %DIRNAME%\luarocks.exe %TREE%\bin\luarocks.exe
move %DIRNAME%\luarocks-admin.exe %TREE%\bin\luarocks-admin.exe

rd %DIRNAME%
del %DIRNAME%.zip

pause
