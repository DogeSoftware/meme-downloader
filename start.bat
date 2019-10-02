@echo off
call :writeHeader
where npm.cmd >nul 2>&1 && goto NPMInstalled || goto NPMNotInstalled
:NPMInstalled
where node.exe >nul 2>&1 && goto NodeInstalled || goto NodeNotInstalled
:NodeInstalled
echo Updating Libraries . . .
echo.
call npm i image-download image-type memejs
echo Libraries are up to date!
echo.
pause
cls
call :writeHeader
echo Close this window to stop the download process
echo.
echo Press any key to begin downloading . . .
pause>nul
if not exist memes mkdir memes
cd memes

:loop
node ../index.js
goto loop

:NPMNotInstalled
echo Node Package Manager (NPM) is not installed on your system. Please install NPM and try again.
goto end

:NodeNotInstalled
echo NodeJS Runtime is not installed on your system. Please install NodeJS and try again.
goto end

:writeHeader
echo Meme Downloader by lazycouchdoge and cheesits456
echo ================================================
echo.
goto :eof

:end
pause
exit