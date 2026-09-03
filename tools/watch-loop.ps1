<#
.SYNOPSIS
  Runs forever in the background: every 60 seconds, checks the study guide repo for
  changes, and if found, commits and pushes them to GitHub.

.DESCRIPTION
  This is the Task-Scheduler-free alternative to sync.ps1/install.ps1. It's meant to be
  launched once (hidden) via a shortcut in your Startup folder - see install-startup.ps1 -
  so it starts automatically each time you log in and just keeps running.
#>

param(
    [string]$RepoPath = "C:\Users\rusda\OneDrive\Documents\GitHub\CIS-454-Master-Study-Guide"
)

$logFile = Join-Path $PSScriptRoot "sync-log.txt"

function Write-Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path $logFile -Value "[$timestamp] $Message"
}

Write-Log "Watcher loop started (PID $PID)."

while ($true) {
    try {
        Set-Location -Path $RepoPath -ErrorAction Stop

        git rev-parse --is-inside-work-tree *> $null
        if ($LASTEXITCODE -eq 0) {
            git add -A *> $null
            git diff --cached --quiet
            $hasChanges = ($LASTEXITCODE -ne 0)

            if ($hasChanges) {
                $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
                Write-Log "Change detected - committing."

                git commit -m "Auto-update study guide - $timestamp" 2>&1 |
                    ForEach-Object { Write-Log "commit: $_" }

                git pull --rebase --autostash 2>&1 |
                    ForEach-Object { Write-Log "pull: $_" }

                git push 2>&1 | ForEach-Object { Write-Log "push: $_" }

                if ($LASTEXITCODE -eq 0) {
                    Write-Log "Pushed successfully."
                } else {
                    Write-Log "ERROR: push failed (exit code $LASTEXITCODE)."
                }
            }
        } else {
            Write-Log "ERROR: '$RepoPath' is not a git repository."
        }
    } catch {
        Write-Log "ERROR: $_"
    }

    Start-Sleep -Seconds 60
}
