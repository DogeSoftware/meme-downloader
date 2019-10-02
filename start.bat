@echo off
title Meme Downloader
call :writeHeader
where npm.cmd >nul 2>&1 && goto NPMInstalled || goto NPMNotInstalled
:NPMInstalled
where node.exe >nul 2>&1 && goto NodeInstalled || goto NodeNotInstalled
:NodeInstalled
echo   Updating Libraries . . .
echo.
call npm i image-download image-type memejs-c456
echo   Libraries are up to date!
echo.
echo   Press any key to continue . . .
pause>nul
cls
call :writeHeader
echo   Close this window at any time to stop the download process
echo.
echo   Press any key to begin downloading . . .
pause>nul
if not exist memes mkdir memes
cd memes

:loop
cls
call :writeHeader
for /f %%A in ('dir ^| find "File(s)"') do set cnt=%%A
echo.
call :writeDownloadCounter
call node ../index.js
goto loop

:NPMNotInstalled
echo Node Package Manager (NPM) is not installed on your system. Please install NPM and try again.
goto end

:NodeNotInstalled
echo NodeJS Runtime is not installed on your system. Please install NodeJS and try again.
goto end

:writeHeader
echo   ___  ___                      ______                    _                 _
echo   ^|  \/  ^|                      ^|  _  \                  ^| ^|               ^| ^|
echo   ^| .  . ^| ___ _ __ ___   ___   ^| ^| ^| ^|_____      ___ __ ^| ^| ___   __ _  __^| ^| ___ _ __
echo   ^| ^|\/^| ^|/ _ ^| '_ ` _ \ / _ \  ^| ^| ^| / _ \ \ /\ / ^| '_ \^| ^|/ _ \ / _` ^|/ _` ^|/ _ ^| '__^|
echo   ^| ^|  ^| ^|  __^| ^| ^| ^| ^| ^|  __/  ^| ^|/ ^| (_) \ V  V /^| ^| ^| ^| ^| (_) ^| (_^| ^| (_^| ^|  __^| ^|
echo   \_^|  ^|_/\___^|_^| ^|_^| ^|_^|\___^|  ^|___/ \___/ \_/\_/ ^|_^| ^|_^|_^|\___/ \__,_^|\__,_^|\___^|_^|
echo                                                        by lazydevdoge and cheesits456
echo.
goto :eof

:writeDownloadCounter
echo                ______
echo               ^|      ^|
echo               ^|      ^|
echo               ^|      ^|
echo            ___^|      ^|___
echo            \            /     %cnt% memes saved
echo             \          /
echo              \        /
echo               \      /
echo                \    /
echo                 \  /
echo                  \/
goto :eof

:end
pause
exit