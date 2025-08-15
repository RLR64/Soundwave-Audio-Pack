@echo off
setlocal EnableDelayedExpansion
mkdir "converted" 2>nul

for /r %%f in (*.aac) do (
    set "input=%%f"
    echo %%f | findstr /i /c:"converted" >nul
    if !errorlevel! neq 0 (
        set "relative=%%f"
        set "relative=!relative:%CD%\=!"
        set "output=converted\!relative:.wav=.flac!"
        for %%d in ("!output!") do mkdir "%%~dpd" 2>nul
        echo Processing: !relative!
        ffmpeg -i "!input!" "!output!"
    )
)

echo WAV to FLAC conversion complete!
pause
