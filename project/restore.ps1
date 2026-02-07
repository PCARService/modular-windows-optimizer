# Restore.ps1

$LastBackup = Get-ChildItem "$PSScriptRoot\backups" |
    Sort-Object CreationTime -Descending |
    Select-Object -First 1

if (-not $LastBackup) {
    Write-Error "No hay backups disponibles."
    exit 1
}

reg import "$($LastBackup.FullName)\HKLM.reg"
reg import "$($LastBackup.FullName)\HKCU.reg"

Import-Csv "$($LastBackup.FullName)\Services.csv" |
    ForEach-Object {
        Set-Service -Name $_.Name -StartupType $_.StartType -ErrorAction SilentlyContinue
    }

Write-Host "RESTAURACIÓN COMPLETADA. REINICIO RECOMENDADO." -ForegroundColor Green
