
@echo off
IF [%TREE%] == [] call setenv-mingw.bat

sh -c ". ./setenv-linux; cd LuaJIT; make; make install DESTDIR=$TREE PREFIX="

copy LuaJIT\src\lua51.dll %TREE%\lib\
copy LuaJIT\src\libluajit-5.1.dll.a %TREE%\lib\

move %TREE%\bin\luajit-*.exe %TREE%\bin\luajit.exe
pause
