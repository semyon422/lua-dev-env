@echo off
IF [%TREE%] == [] call setenv-mingw.bat
gcc -I%TREE%/include/luajit-2.1 -v -shared -o libtest.dll test.c -L%TREE%/lib -l:libluajit-5.1.dll.a
pause
