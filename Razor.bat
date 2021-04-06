@echo off
if exist x.txt del x.txt
echo please enter the link for youtube video:
set /p link="Video link: "
youtube-dl -g -f best %link% >> x.txt
set /p videolink=<x.txt
del x.txt
:cut
set /p anwser1="please enter start point:"
set /p anwser2="please enter duration:"
set /p answer3="Please enter the number:"
ffmpeg -ss %anwser1% -i "%videolink%" -t %anwser2% -c:v libx264 -s 1920x1080 outputvideo%answer3%.mp4
set /p con="Gonna Next?[y/n]"
if "%con%"=="y" goto cut
pause