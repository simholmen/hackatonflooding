#!/usr/bin/env bash
# Serves Flomlag on http://localhost:$PORT and opens it in the browser.
# Must run over http (not file://): OpenStreetMap tiles are blocked without a Referer.
set -euo pipefail
cd "$(dirname "$0")"
PORT="${PORT:-8000}"
URL="http://localhost:$PORT"
echo "Flomlag kjører på $URL  (Ctrl+C for å stoppe)"
( sleep 1; open "$URL" 2>/dev/null || xdg-open "$URL" 2>/dev/null || true ) &
exec python3 -m http.server "$PORT" --bind 127.0.0.1
