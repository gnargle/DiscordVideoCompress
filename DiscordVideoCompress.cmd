@echo off
:SET YOUR SIZE LIMIT HERE. 8 for no nitro, 50 for Nitro Classic, 100 for full Nitro. Or anything else you want, I guess.
SET FILE_LIMIT=50

SET /A "FILE_B=FILE_LIMIT*8192"
echo filesize: %FILE_B%
cd /D %~p0
SET output=%~n1_%FILE_LIMIT%MB.mp4

ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 %1 > tmpFile
set /p seconds= < tmpFile
del tmpFile

:SET /P seconds=How many seconds is the video? 
SET /A "totalBitrate=FILE_B/seconds"
echo totalbitrate: %totalBitrate%

SET overheadBitrate=100
SET audioBitrate=96
SET /A "videoBitrate=totalBitrate-audioBitrate-overheadBitrate"
ffmpeg -y -i %1 -c:v libx264 -b:v %videoBitrate%k -pass 1 -b:a %audioBitrate%k -f mp4 NUL && \
ffmpeg -i %1 -c:v libx264 -b:v %videoBitrate%k -pass 2 -b:a %audioBitrate%k "%output%"
del /q ffmpeg2pass-*.log ffmpeg2pass-*.mbtree
pause