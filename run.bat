@echo off
::判断文件夹是否存在
if not exist D:\temp ( mkdir D:\temp )
::删除可能存在的过期文件
if exist D:\temp\test-1.0-SNAPSHOT.jar del D:\temp\test-1.0-SNAPSHOT.jar
::复制文件
copy C:\actions-runner\test-work\test\test\target\test-1.0-SNAPSHOT.jar D:\temp
::编译机用PowerShell执行，需要让编译机的PowerShell切换到目录D:\temp，下面的命令会要求编译机在启动编译机而不是切换目录，应该写到.github里
::cd D:\temp
::java -jar test-1.0-SNAPSHOT.jar > D:\temp\test.log &