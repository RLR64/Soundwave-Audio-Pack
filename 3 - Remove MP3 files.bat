@echo off
echo Removing MP3 files...
for /r %%f in (*.mp3) do (
    del "%%f"
    echo Deleted: %%f
)
echo.
echo All MP3 files have been removed!
pause