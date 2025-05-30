@echo off
Rem sets the current directory
set startDir=%cd%

Rem asks the user for a directory path to cd to it
Set /p dirPath= Enter the target directory:
cd /d %dirPath%

Rem changes all webp files into png because jpg sucks
magick mogrify -format png *.jpg

Rem deletes webp since we have a better format version of the images
del *.jpg

Rem teleports back to startDir
cd /d %startDir%