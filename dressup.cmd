@ECHO OFF

set DIR_EMPRESSES=%1\empresses
set DIR_GIRLS=%DIR_EMPRESSES%\girls

IF NOT exist %DIR_EMPRESSES% (
     mkdir %DIR_EMPRESSES%
     mkdir %DIR_GIRLS%
)

copy .\dir_Girls\Emily\Emily.zig %DIR_GIRLS%\. > NUL
copy .\dir_Girls\Louise\Louise.zig %DIR_GIRLS%\. > NUL
copy .\dir_Girls\Tina\Tina.zig %DIR_GIRLS%\. > NUL

echo Completed!
