@echo off
title runlistener.bat
echo start zk
::if exist D:\kafka\kafka_2.12-2.7.0\kafka-logs (rd/s/q "D:\kafka\kafka_2.12-2.7.0\kafka-logs")
::choice /t 9 /d y /n >nul
::echo start zk and Kafka
choice /t 2 /d y /n >nul
cd /d D:\zookeeper\apache-zookeeper-3.5.9-bin\bin
start "zkServer" cmd /k zkServer.cmd
choice /t 1 /d y /n >nul
cd /d D:\redis
start "redis-server" cmd /k redis-server.exe
cd /d D:\kafka\kafka_2.12-2.7.0\bin\windows
::choice /t 1 /d y /n >nul
start "kafka-server" cmd /k kafka-server-start.bat ..\..\config\server.properties
choice /t 15 /d y /n >nul
::echo push data to kafka
cd /d D:\sinan
start "test" cmd /k java -jar C:\actions-runner\test-work\test\test\target\test-1.0-SNAPSHOT.jar
::start "KafkaProducer" cmd /k java -jar KafkaProducer.jar
::start "KafkaOffsetMonitor" cmd /C java -jar KafkaOffsetMonitor.jar > D:\sinan\KafkaOffsetMonitor.log
choice /t 5 /d y /n >nul
exit