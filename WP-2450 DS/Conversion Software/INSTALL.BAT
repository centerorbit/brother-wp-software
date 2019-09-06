echo off
echo Installing Conversion Software on drive C:, please stand by ...
md c:\brother
copy *.* c:\brother\*.* >nul
del c:\brother\install.bat
echo CD BROTHER >c:\convert.bat
echo CONVERT >>c:\convert.bat
echo cd \ >>c:\convert.bat
echo Conversion software has now been installed on drive C:.
echo on >nul
