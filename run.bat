@echo off
::判断文件夹是否存在
if not exist C:\temp ( mkdir C:\temp )
::删除可能存在的过期文件
if exist C:\temp\test-1.0-SNAPSHOT.jar del C:\temp\test-1.0-SNAPSHOT.jar
::复制文件
copy C:\actions-runner\test-work\test\test\target\test-1.0-SNAPSHOT.jar C:\temp
cd C:\temp
java -jar test-1.0-SNAPSHOT.jar > C:\temp\test.log