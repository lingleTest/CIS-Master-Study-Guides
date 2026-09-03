<#
.SYNOPSIS
  One-time setup (no admin / Task Scheduler rights required): copies watch-loop.ps1 to a
  stable location, drops a shortcut in your Startup folder so it launches hidden at every
  login, and starts it right now.

.USAGE
  Run this once, from PowerShell, with watch-loop.ps1 sitting next to it:
      powershell -ExecutionPolicy Bypass -File install-startup.ps1
#>

param(
    [string]$RepoPath = "C:\Users\rusda\OneDrive\Documents\GitHub\CIS-454-Master-Study-Guide"
)

$ErrorActionPreference = "Stop"

$installDir = Join-Path $env:USERPROFILE "StudyGuideAutoSync"
New-Item -ItemType Directory -Path $installDir -Force | Out-Null

$sourceScript = Join-Path $PSScriptRoot "watch-loop.ps1"
if (-not (Test-Path $sourceScript)) {
    Write-Host "ERROR: watch-loop.ps1 not found next to this script (expected at $sourceScript)."
    exit 1
}

$destScript = Join-Path $installDir "watch-loop.ps1"
Copy-Item -Path $sourceScript -Destination $destScript -Force

$startupFolder = [Environment]::GetFolderPath("Startup")
$shortcutPath = Join-Path $startupFolder "StudyGuideAutoSync.lnk"
$argString = "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$destScript`" -RepoPath `"$RepoPath`""

$wshell = New-Object -ComObject WScript.Shell
$shortcut = $wshell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = "powershell.exe"
$shortcut.Arguments = $argString
$shortcut.WorkingDirectory = $installDir
$shortcut.WindowStyle = 7  # minimized/hidden-ish
$shortcut.Description = "Auto-sync CIS-454 study guide to GitHub"
$shortcut.Save()

Write-Host "Startup shortcut created at:"
Write-Host "  $shortcutPath"
Write-Host "It will launch automatically the next time you log in."
Write-Host ""

# Kill any previous copy that might already be running, then start fresh
Get-CimInstance Win32_Process -Filter "Name = 'powershell.exe'" |
    Where-Object { $_.CommandLine -like "*watch-loop.ps1*" } |
    ForEach-Object { Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue }

Start-Process -FilePath "powershell.exe" -ArgumentList $argString -WindowStyle Hidden

Write-Host "Started now - no need to log off/on to test it."
Write-Host ""
Write-Host "Log file (only written to when something actually syncs):"
Write-Host "  $installDir\sync-log.txt"
Write-Host ""
Write-Host "To stop it: open Task Manager, find the background 'Windows PowerShell' process, End task."
Write-Host "To stop it permanently: delete the shortcut at `"$shortcutPath`""
