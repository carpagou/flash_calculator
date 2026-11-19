@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "SL03 Flash Calculator" http://localhost:8787
  py -m http.server 8787
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "SL03 Flash Calculator" http://localhost:8787
    python -m http.server 8787
  ) else (
    echo Python is not installed. You can still open index.html directly in your browser.
    pause
  )
)
