cd /D "%~dp0"

set TREE=%CD%\root

set PATH=%TREE%\bin;%TREE%\lib;%PATH%
set PATH=%PATH%;C:\msys64\mingw64\bin;C:\msys64\usr\bin

set LUA_PATH=.\?.lua
set LUA_PATH=%LUA_PATH%;%TREE%\share\luajit-2.1.0-beta3\?.lua
set LUA_PATH=%LUA_PATH%;%TREE%\share\lua\5.1\?.lua;%TREE%\share\lua\5.1\?\init.lua

set LUA_CPATH=.\?.dll
set LUA_CPATH=%LUA_CPATH%;%TREE%\lib\lua\5.1\?.dll
set LUA_CPATH=%LUA_CPATH%;%TREE%\lib\lua\5.1\loadall.dll

set LUAROCKS_CONFIG=%CD%\config-mingw.lua
set LUAROCKS=luarocks --lua-version 5.1 --lua-dir %TREE% --tree %TREE%
