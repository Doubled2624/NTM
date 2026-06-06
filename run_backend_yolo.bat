@echo off
setlocal
cd /d "%~dp0backend"
call "..\.venv_yolo\Scripts\activate.bat"
python -m uvicorn main:app --host 0.0.0.0 --port 8000
endlocal
