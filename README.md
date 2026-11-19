# SL03 Flash Calculator

A self-contained, offline-capable web app for ULANZI SL03 manual flash calculations.

## Publish for phone installation
1. Extract the ZIP file.
2. Open https://app.netlify.com/drop and sign in to Netlify (recommended for managing future updates).
3. Drag the extracted `sl03_flash_calculator` folder itself into the Drop area. Do not drag the ZIP file.
4. Open the generated `https://....netlify.app` address on your phone.
5. Android: Chrome menu ⋮ → Install app (or Add to Home screen). iPhone: Safari Share → Add to Home Screen → enable Open as Web App if shown.

The web app uses HTTPS, a web manifest, PNG app icons and a service worker for offline caching. The calculator's saved settings stay in each browser/device and are not synced.

## Quick start (Windows)
1. Extract the ZIP file to a normal folder.
2. Double-click `index.html` to use the calculator immediately. It works without an internet connection.
3. Optional: double-click `start_windows.bat` to run it at `http://localhost:8787`. This enables service-worker caching and browser app installation where supported.

## Quick start (macOS / Linux)
- Open `index.html` in a browser, or run `./start_mac_linux.sh` and visit `http://localhost:8787`.

## Features
- Film mode: Pentax MX (1/60 s X-sync) and P30n (1/100 s X-sync), film ISO, aperture, distance-to-power and power-to-distance.
- Digital mode: Sony ZV-1 ambient-meter workflow, direct flash calculation, and ISO inversion.
- ZV-1 mechanical shutter sync ceiling is set to 1/2000 s based on the user's successful SL03 tests at all four power levels. Electronic shutter uses a conservative 1/100 s ceiling.
- Four SL03 manual power levels: 1/8, 1/4, 1/2, 1/1.
- Estimated bounce-loss compensation, EV error, recharge-time reference, local settings persistence, responsive layout and offline cache.

## Calculation notes
- Uses GN 8 at ISO 100 and the square-root relationship between guide number and flash power.
- The selected power and ISO are rounded to the nearest available value in stop space (log2), and the resulting EV difference is displayed.
- Shutter speed does not directly change flash exposure in the basic single-flash calculation. It is used for ambient exposure and sync-limit checks.
- Bounce-loss compensation is an estimate selected by the user; actual bounce loss varies with room geometry and surfaces.
- The ZV-1 1/2000 s setting is based on the user's field test with their camera/flash combination, not a general guarantee for every flash or trigger.

No external libraries, accounts, API keys, or build tools are required.
