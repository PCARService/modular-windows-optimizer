# Optimize.ps1

$BasePath  = $PSScriptRoot
$Modules   = "$BasePath\modules"

. "$Modules\lang.ps1"

Write-Host ""
Write-Host $Text.START_OPT -ForegroundColor Cyan

Write-Host $Text.DISK -ForegroundColor Cyan
. "$Modules\disk.ps1"

Write-Host $Text.CLEANUP -ForegroundColor Cyan
. "$Modules\cleanup.ps1"

Write-Host $Text.NETWORK -ForegroundColor Cyan
. "$Modules\network.ps1"

Write-Host $Text.POWER -ForegroundColor Cyan
. "$Modules\power.ps1"

Write-Host $Text.SERVICES -ForegroundColor Cyan
. "$Modules\services.ps1"

Write-Host $Text.PERFORMANCE -ForegroundColor Cyan
. "$Modules\performance.ps1"

Write-Host $Text.PRIVACY -ForegroundColor Cyan
. "$Modules\privacy.ps1"

Write-Host ""
Write-Host $Text.AI_QUESTION
$choice = Read-Host $Text.AI_PROMPT

if ($choice -match '^[sS]$') {
    Write-Host $Text.AI_DISABLE
    . "$Modules\ai.ps1"
}
else {
    Write-Host $Text.AI_SKIP
}

Write-Host ""
Write-Host $Text.DONE -ForegroundColor Green