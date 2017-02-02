@ECHO ON
cls
REM ECHO.

REM convert to animated gif

CD /D %~dp0
mkdir jpgs
SET Program="convert.exe"
for %%A in (*.pdf) do %Program%  -density 1200 -alpha on %%A jpgs/%%~nA.jpg
Pause
