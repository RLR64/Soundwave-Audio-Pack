@echo off
setlocal EnableDelayedExpansion
mkdir "converted" 2>nul

for /r %%f in (*.wav) do (
    set "input=%%f"
    echo %%f | findstr /i /c:"converted" >nul
    if !errorlevel! neq 0 (
        set "relative=%%f"
        set "relative=!relative:%CD%\=!"
        set "output=converted\!relative:.wav=.mp3!"
        for %%d in ("!output!") do mkdir "%%~dpd" 2>nul
        echo Processing: !relative!
        ffmpeg -i "!input!" -ar 44100 -ac 2 -b:a 192k "!output!"
    )
)

echo WAV to MP3 (192kbps, 44.1kHz Stereo) complete!
pause
