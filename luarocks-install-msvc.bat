@echo off
IF [%TREE%] == [] call setenv-msvc.bat
%LUAROCKS% install luasec OPENSSL_DIR="C:\Program Files\OpenSSL-Win64"
pause
