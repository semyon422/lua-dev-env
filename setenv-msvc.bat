cd /D "%~dp0"

set TREE=%CD%\root

set PATH=%TREE%\bin;%TREE%\lib;%PATH%

set LUA_PATH=.\?.lua
set LUA_PATH=%LUA_PATH%;%TREE%\share\luajit-2.1\?.lua
set LUA_PATH=%LUA_PATH%;%TREE%\share\lua\5.1\?.lua;%TREE%\share\lua\5.1\?\init.lua

set LUA_CPATH=.\?.dll
set LUA_CPATH=%LUA_CPATH%;%TREE%\lib\lua\5.1\?.dll
set LUA_CPATH=%LUA_CPATH%;%TREE%\lib\lua\5.1\loadall.dll

set LUAROCKS=luarocks --lua-version 5.1 --lua-dir %TREE% --tree %TREE%

"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86_amd64
