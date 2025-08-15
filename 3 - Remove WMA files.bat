@echo off
echo Removing WMA files...
for /r %%f in (*.wma) do (
    del "%%f"
    echo Deleted: %%f
)
echo.
echo All WMA files have been removed!
pause