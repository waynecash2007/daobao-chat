@echo off
chcp 65001 >nul
title Daobao Chat
echo Starting chat server...
start "" "daobao-server.exe"
timeout /t 3 /nobreak >nul
start "" "http://127.0.0.1:8765"
