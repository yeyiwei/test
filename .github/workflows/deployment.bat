@echo off
title deployment.bat
echo deployment project
if not exist ..\..\..\..\..\..\temp ( mkdir ..\..\..\..\..\..\temp )
if exist ..\..\..\..\..\..\temp\test-1.0-SNAPSHOT.jar del ..\..\..\..\..\..\temp\test-1.0-SNAPSHOT.jar
echo befor copy
copy ..\..\target\test-1.0-SNAPSHOT.jar ..\..\..\..\..\..\temp\test-1.0-SNAPSHOT.jar
