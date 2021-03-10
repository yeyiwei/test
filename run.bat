@echo off
::删除可能存在的过期文件
if exist D:\temp\test-1.0-SNAPSHOT.jar del D:\temp\test-1.0-SNAPSHOT.jar
::判断文件夹是否存在
if not exist D:\temp ( mkdir D:\temp )
::复制文件
copy C:\actions-runner\test-work\test\test\target\test-1.0-SNAPSHOT.jar D:\temp
cd D:\temp
java -jar test-1.0-SNAPSHOT.jar > D:\temp\test.log &