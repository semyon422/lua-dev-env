@echo off
IF [%TREE%] == [] call setenv-msvc.bat

cd LuaJIT\src
call msvcbuild.bat
cd ..\..

set _PATH=%PATH%
set PATH=%PATH%;C:\msys64\mingw64\bin;C:\msys64\usr\bin
sh -c ". ./setenv-linux; cd LuaJIT; make install DESTDIR=$TREE PREFIX="
set PATH=%_PATH%

copy LuaJIT\src\lua51.dll %TREE%\lib\
copy LuaJIT\src\lua51.lib %TREE%\lib\

move %TREE%\bin\luajit-*.exe %TREE%\bin\luajit.exe
pause
