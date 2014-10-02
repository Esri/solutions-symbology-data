@ECHO OFF

:: This script converts SVG files to PNG.  Run as admin
:: For Inkscape help, see http://inkscape.org/doc/inkscape-man.html
:: For an alternative to Inkscape that works just as well, see http://code.google.com/p/svg2emf/
 
:: --> TODO: Correct paths below (to your local configuration/setup)
SET converter=C:\{Install Location}\inkscape\inkscape.com
SET source_folder=C:\{Github}\solutions-symbology-data\data\emergency-management-symbols\svgs
SET destination_folder=C:\{Github}\solutions-symbology-data\data\emergency-management-symbols\emfs

:: Use this option if you want to convert a folder and all subfolders (recursion) ...
for /r "%source_folder%" %%i in (*.svg) do "%converter%" "%%i" --export-emf="%destination_folder%\%%~ni.emf"