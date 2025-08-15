@echo off
echo Removing WAV files...
for /r %%f in (*.wav) do (
    del "%%f"
    echo Deleted: %%f
)
echo.
echo All WAV files have been removed!
pause