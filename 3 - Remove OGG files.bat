@echo off
echo Removing OGG files...
for /r %%f in (*.ogg) do (
    del "%%f"
    echo Deleted: %%f
)
echo.
echo All OGG files have been removed!
pause