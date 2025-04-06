@echo off
IF [%TREE%] == [] call setenv-msvc.bat
%LUAROCKS% install luasocket
pause
