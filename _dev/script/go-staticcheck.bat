@echo off
color 07
title ��̬���
:: file-encoding=GBK
rem by iTanken
echo ��ʼ���о�̬���... & echo.

cd /d %~dp0/../../

echo. & echo [golangci-lint.run]
rem go1.20 latest => v1.55.2
go run github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.2 run
echo. & echo [staticcheck.io]
go run honnef.co/go/tools/cmd/staticcheck@latest -f text ./...

call "%~dp0/done-time-pause.bat"
