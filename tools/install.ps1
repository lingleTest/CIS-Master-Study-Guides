<#
.SYNOPSIS
  One-time setup: installs sync.ps1 and registers a Scheduled Task that runs it
  automatically every minute, starting at each login.

.USAGE
  Run this once, from PowerShell, with sync.ps1 sitting next to it:
      powershell -ExecutionPolicy Bypass -File install.ps1
#>

param(
    [string]$RepoPath = "C:\Users\rusda\OneDrive\Documents\GitHub\CIS-454-Master-Study-Guide"
)

$ErrorActionPreference = "Stop"

$installDir = Join-Path $env:USERPROFILE "StudyGuideAutoSync"
New-Item -ItemType Directory -Path $installDir -Force | Out-Null

$sourceScript = Join-Path $PSScriptRoot "sync.ps1"
if (-not (Test-Path $sourceScript)) {
    Write-Host "ERROR: sync.ps1 not found next to install.ps1 (expected at $sourceScript)."
    exit 1
}

$destScript = Join-Path $installDir "sync.ps1"
Copy-Item -Path $sourceScript -Destination $destScript -Force

$taskName = "StudyGuideAutoSync"

# If this script has been run before, replace the old task cleanly
Unregister-ScheduledTask -TaskName $taskName -Confirm:$false -ErrorAction SilentlyContinue

$action = New-ScheduledTaskAction -Execute "powershell.exe" `
    -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$destScript`" -RepoPath `"$RepoPath`""

# AtLogOn triggers don't accept -RepetitionInterval directly in this PowerShell version,
# so build the repetition on a throwaway trigger and copy it over.
$trigger = New-ScheduledTaskTrigger -AtLogOn
$repeatTemplate = New-ScheduledTaskTrigger -Once -At (Get-Date) `
    -RepetitionInterval (New-TimeSpan -Minutes 1) `
    -RepetitionDuration (New-TimeSpan -Days 3650)
$trigger.Repetition = $repeatTemplate.Repetition

$settings = New-ScheduledTaskSettingsSet `
    -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable `
    -MultipleInstances IgnoreNew -ExecutionTimeLimit (New-TimeSpan -Minutes 2)

Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings `
    -Description "Watches the CIS-454 study guide repo and auto-commits/pushes changes to GitHub." `
    | Out-Null

Write-Host "Scheduled task '$taskName' installed."
Write-Host "It will start automatically each time you log in, and check for changes every minute."

# Start it immediately so it's active right now without needing to log off/on
Start-ScheduledTask -TaskName $taskName

Write-Host ""
Write-Host "Started. Log file (only written to when something actually syncs):"
Write-Host "  $installDir\sync-log.txt"
Write-Host ""
Write-Host "To check on it any time: Task Scheduler -> Task Scheduler Library -> $taskName"
Write-Host "To stop it: Disable-ScheduledTask -TaskName $taskName"
Write-Host "To remove it entirely: Unregister-ScheduledTask -TaskName $taskName"
