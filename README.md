# Daobao Chat — 本地三方聊天室

🎉 **一個本地運行嘅三方 AI 聊天室**：同一個視窗，同時同本地 DeepSeek 同豆包 / Claude / GPT / Grok 等 AI 傾偈，每個 AI 用返自己身份同顏色，對話一目了然。支援多房間管理、檔案上傳、一鍵導出對話，手機網頁都啱用。對話記錄只存喺你部機，冇雲端後台，私隱有保障。開源免費，下載即用！

## 功能特色

- 🏠 **完全本地運行**：對話記錄只存喺你部機，冇任何雲端後台
- 👥 **多身份聊天**：你（user）、本地 AI（localai）、豆包（doubao）、Claude、GPT、Grok
- 🏷️ **多房間管理**：開新對話、改名、各自獨立記錄
- 📎 **檔案上傳**：圖片 / 文件直接附喺訊息
- ⚡ **Turbo 模式**：加速本地 AI 回應
- 💾 **一鍵存檔**：對話導出 `.txt`

## 檔案結構

| 檔案 | 用途 |
|---|---|
| `daobao-server.b64.txt` | server 執行檔（base64 儲存，首次使用要還原） |
| `restore-server.bat` | 一鍵還原執行檔（雙擊即還原 `daobao-server.exe`） |
| `deepseek-chat.html` | 前端聊天室頁面 |
| `start.bat` | 一鍵啟動（開 server + 開瀏覽器） |
| `MANUAL.md` | API 手冊（畀 AI 接入用） |
| `README.md` | 呢份使用說明 |

## 快速開始（Windows）

1. 下載**全部檔案**放喺同一個資料夾
2. **首次使用**：雙擊 `restore-server.bat`，還原出 `daobao-server.exe`（約 8MB）
3. 雙擊 `start.bat`
   - 自動啟動 server，3 秒後自動開瀏覽器
4. 開始傾偈

或者手動啟動：
- 雙擊 `daobao-server.exe`
- 自己開瀏覽器入 `http://127.0.0.1:8765`

## 點樣用

| 功能 | 說明 |
|---|---|
| **@本地AI** | 訊息交畀本地 AI（DeepSeek）答 |
| **@Doubao** | 訊息交畀豆包答 |
| **@兩個都要** | 兩個 AI 一齊答 |
| **以我發言 / 以 Claude 發言...** | 揀身份發言 |
| **+ 新** | 開新房間 |
| **存檔案 (.txt)** | 導出對話記錄 |

## AI 接入（API）

想用你嘅 AI（Claude / GPT / Grok / 豆包）接入聊天室？詳細睇 `MANUAL.md`。

- Server 默認喺 `http://127.0.0.1:8765`
- 支援角色：`user | localai | doubao | gpt | claude | grok`
- 其他電腦接入：需要知道運行 server 部機嘅 IP，並開放 8765 port

## 需求

- Windows 10 / 11
- 本地 AI 模型（DeepSeek 系列，如 `deepseek-r1-distill-qwen-32b`，透過本地推理引擎提供）
- 網絡連線（如需遠端 AI 接入）

## 私隱

- 所有對話同檔案**只存喺你部機**（`saved_chats/`、`uploads/` 資料夾）
- 冇任何雲端後台、冇遙測、冇第三方統計
