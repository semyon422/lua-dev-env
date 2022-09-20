# lua-dev-env

Linux and Windows scripts for installing Lua modules using luarocks, or compiling your own C module.

* https://www.msys2.org/
* https://github.com/luarocks/luarocks/wiki/Download

## install-luajit-*
These scripts downloads and compiles LuaJIT (git and msys2 required).
In Windows it should be called from `shell-bash.bat`.

## build-*
Builds so/dll from test.c

## shell-bash.bat
Msys2 shell. Use it for installing packages using *pacman*.
```
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-openssl make
```

## shell-cmd.bat
Cmd shell. Use it for installing packages using *luarocks*.
Download luarocks.exe and copy it to `root/bin`
```cmd
%luarocks% make OPENSSL_DIR=C:\msys64\mingw64
```

