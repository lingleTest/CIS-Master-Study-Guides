<#
.SYNOPSIS
  Checks the study guide repo for changes and, if found, commits and pushes them to GitHub.

.DESCRIPTION
  Intended to be run every minute by a Scheduled Task (see install.ps1). Each run is a
  quick, cheap check: if nothing changed since the last run, it exits immediately without
  writing to the log. If something changed, it stages, commits, pulls (rebase+autostash to
  avoid clobbering anything pushed from elsewhere), and pushes.
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

try {
    Set-Location -Path $RepoPath -ErrorAction Stop
} catch {
    Write-Log "ERROR: could not access repo path '$RepoPath' - $_"
    exit 1
}

# Make sure this is actually a git repo before doing anything
git rev-parse --is-inside-work-tree *> $null
if ($LASTEXITCODE -ne 0) {
    Write-Log "ERROR: '$RepoPath' is not a git repository."
    exit 1
}

# Stage everything (files ignored via .gitignore, e.g. Word lock files, are skipped automatically)
git add -A *> $null

# Anything staged?
git diff --cached --quiet
$hasChanges = ($LASTEXITCODE -ne 0)

if (-not $hasChanges) {
    exit 0
}

$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Write-Log "Change detected - committing."

$commitOutput = git commit -m "Auto-update study guide - $timestamp" 2>&1
$commitOutput | ForEach-Object { Write-Log "commit: $_" }

$pullOutput = git pull --rebase --autostash 2>&1
$pullOutput | ForEach-Object { Write-Log "pull: $_" }

$pushOutput = git push 2>&1
$pushOutput | ForEach-Object { Write-Log "push: $_" }

if ($LASTEXITCODE -eq 0) {
    Write-Log "Pushed successfully."
} else {
    Write-Log "ERROR: push failed (exit code $LASTEXITCODE). See lines above."
}
