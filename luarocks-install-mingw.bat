@echo off
IF [%TREE%] == [] call setenv-mingw.bat
%LUAROCKS% install luasocket
pause
