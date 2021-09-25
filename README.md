# DiscordVideoCompress
Simple batch script to compress a video file to a file size limit, e.g. Discord's 8/50/100MB limits, using ffmpeg.
<br>
Adapted from [EtDoFresh](https://www.etdofresh.com/ffmpeg-your-videos-to-8mb-in-windows-for-discord-use/).
Download ffmpeg from [here](https://github.com/BtbN/FFmpeg-Builds/releases) and drop ffmpeg.exe and ffprobe.exe in the same folder as the .cmd - or just use the zip with everything in it provided in the release of this script [here](https://github.com/gnargle/DiscordVideoCompress/releases).

To customize the filesize limit, change the FILE_LIMIT value from 50 to whatever you want. Some suggestions for the discord file sizes are given above.

Then to compress your video, just drag and drop the video file on to the .cmd - after it's done converting, a file with the same name with the size suffixed at the end should appear in the folder the script is in.
