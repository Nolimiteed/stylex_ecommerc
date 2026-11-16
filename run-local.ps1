$ErrorActionPreference = "Stop"
$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$python = Join-Path $projectRoot ".venv\Scripts\python.exe"

if (-not (Test-Path -LiteralPath $python)) {
    throw "Missing .venv. Install dependencies before starting the site."
}

Set-Location -LiteralPath $projectRoot
& $python manage.py runserver 127.0.0.1:8000
