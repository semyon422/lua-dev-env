@echo off
IF [%TREE%] == [] call setenv-mingw.bat
luajit main.lua
pause
