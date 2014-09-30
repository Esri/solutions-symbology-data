@ECHO OFF

:: This script converts SVG files to PNG.  Run as admin
:: For Inkscape help, see http://inkscape.org/doc/inkscape-man.html
:: For an alternative to Inkscape that works just as well, see http://code.google.com/p/svg2emf/
 
:: :: --> TODO: Correct paths below (to your local configuration/setup)
SET converter=C:\{Install Location}\Inkscape\inkscape.com
SET source_folder=C:\{Github}\solutions-symbology-data\data\incident-symbols\svgs
SET destination_folder=C:\{Github}\solutions-symbology-data\data\incident-symbols\pngs

:: Use this option if you want to convert a folder and all subfolders (recursion) ...
for /r "%source_folder%" %%i in (*.svg) do "%converter%" "%%i" --export-width=64 --export-height=64 --export-png="%destination_folder%\%%~ni.png"