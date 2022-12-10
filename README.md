# lua-dev-env

Linux and Windows (MinGW and MSVC) scripts for installing Lua modules using luarocks, or compiling your own C module.

* https://www.msys2.org/
* https://github.com/luarocks/luarocks/wiki/Download

## clone-luajit
This scripts downloads LuaJIT.

## install-luajit-*
These scripts compiles LuaJIT (git and gcc/msys2/msvc required).

## build-*
Builds so/dll from test.c

## shell-bash.bat
Msys2 shell. Use it for installing packages using *pacman*.
```
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-openssl make
```

## shell-*
Cmd shell. Use it for installing packages using *luarocks*.
Download luarocks.exe and copy it to `root/bin`
```cmd
%luarocks% make OPENSSL_DIR=C:\msys64\mingw64
```

