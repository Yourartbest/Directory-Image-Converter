@echo off
Rem sets the current directory
set startDir=%cd%

Rem asks the user for a directory path to cd to it and the image types
Set /p dirPath= Enter the target directory:
cd /d %dirPath%

Set /p inputType= Enter input image type (ie: jpg):

Set /p outputType= Enter output image type (ie: png):

Rem changes all webp files into png because webp sucks
magick mogrify -format %outputType% *.%inputType%

Rem deletes webp since we have a better format version of the images
del *.%inputType%

Rem teleports back to startDir
cd /d %startDir%