@echo off
color 07
title ���²����� GO ģ������
:: file-encoding=GBK
rem by iTanken

cd /d %~dp0/../../
echo 1. ������������...
cd
:: & go get -d -u & echo.
go get -u github.com/emirpasic/gods
go get -u github.com/sijms/go-ora/v2
go get -u github.com/thoas/go-funk
go get -u gorm.io/gorm
echo.

echo 2. ����ģ������...
go mod tidy & echo.

:: echo 3. ����ģ�������� vendor Ŀ¼...
:: go mod vendor & echo.

git add .

call "%~dp0/done-time-pause.bat"
