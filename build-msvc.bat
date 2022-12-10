@echo off
IF [%TREE%] == [] call setenv-msvc.bat
cl /nologo /MD /O2 -c -Fotest.obj -I%TREE%\include\luajit-2.1 test.c -DLUA_BUILD_AS_DLL -DLUA_LIB
link -dll -out:libtest.dll %TREE%\lib\lua51.lib test.obj
pause
