echo off
for /r %%f in ( * ) do call :sub "%%f"
exit /b

:sub
set fname=%~nx1
set fname=%fname:_front.=_south.%
set fname=%fname:_back.=_north.%
set fname=%fname:_side.=_east.%
ren %1 %fname%
goto :EOF
