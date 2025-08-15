@echo off
setlocal EnableDelayedExpansion
mkdir "converted" 2>nul

for /r %%f in (*.wav) do (
    set "input=%%f"
    echo %%f | findstr /i /c:"converted" >nul
    if !errorlevel! neq 0 (
        set "relative=%%f"
        set "relative=!relative:%CD%\=!"
        set "output=converted\!relative!"
        for %%d in ("!output!") do mkdir "%%~dpd" 2>nul
        echo Processing: !relative!
        ffmpeg -i "!input!" -ar 48000 -acodec pcm_s16le "!output!"
    )
)

echo Conversion to 16-Bit Signed PCM complete!
pause