@echo off
chcp 65001 >nul
title Daobao Chat - Restore Server
echo.
echo  正在還原 daobao-server.exe ...
echo.
powershell -NoProfile -Command "[IO.File]::WriteAllBytes((Join-Path $PSScriptRoot 'daobao-server.exe'), [Convert]::FromBase64String([IO.File]::ReadAllText((Join-Path $PSScriptRoot 'daobao-server.b64.txt'))))"
if exist "daobao-server.exe" (
  echo.
  echo  ✅ 完成！daobao-server.exe 已還原
  echo  可以雙擊 start.bat 啟動聊天室
) else (
  echo.
  echo  ❌ 還原失敗，請確認 daobao-server.b64.txt 喺同一個資料夾
)
echo.
pause
