@echo off
echo Removing FLAC files...
for /r %%f in (*.flac) do (
    del "%%f"
    echo Deleted: %%f
)
echo.
echo All FLAC files have been removed!
pause