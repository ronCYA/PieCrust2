@echo off
setlocal

set CUR_DIR=%~dp0
set CHEF=%CUR_DIR%..\bin\chef
set OUT_DIR=%CUR_DIR%..\piecrust\resources\messages
set ROOT_DIR=%CUR_DIR%messages

%CHEF% --root=%ROOT_DIR% bake -o %OUT_DIR%
del %OUT_DIR%\index.html

