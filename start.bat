@echo off
mode con: cols=90 lines=26
title Meme Downloader
where npm.cmd >nul 2>&1 && goto NPMInstalled || goto NPMNotInstalled
:NPMInstalled
where node.exe >nul 2>&1 && goto NodeInstalled || goto NodeNotInstalled
:NodeInstalled
echo Updating Libraries . . .
echo.
call npm i image-download image-type memejs-c456 colors
title Meme Downloader
echo Libraries are up to date!
echo.
echo Press any key to continue . . .
pause>nul
if not exist memes mkdir memes
cd memes
cls
call node ../scripts/writeHeader.js
echo.
echo     Close this window at any time to stop the download process
echo.
echo.
echo     Press any key to begin downloading . . .
pause>nul

:loop
cls
call node ../scripts/writeHeader.js
call node ../scripts/writeDownloadCounter.js
call node ../index.js
goto loop

:NPMNotInstalled
echo Node Package Manager (NPM) is not installed on your system. Please install NPM and try again.
goto end

:NodeNotInstalled
echo NodeJS Runtime is not installed on your system. Please install NodeJS and try again.
goto end

:end
pause
exit