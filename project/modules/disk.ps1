# Disk.ps1

# Optimizar todos los volúmenes fijos
Get-Volume | Where-Object {
    $_.DriveType -eq 'Fixed' -and $_.DriveLetter
} | ForEach-Object {
    try {
        Optimize-Volume -DriveLetter $_.DriveLetter -ReTrim -Defrag -ErrorAction SilentlyContinue
    } catch {}
}

# Crear carpeta de backup con timestamp
$BackupRoot = Join-Path $PSScriptRoot "..\backups"
$BackupDir  = Join-Path $BackupRoot (Get-Date -Format "yyyyMMdd_HHmmss")

New-Item -ItemType Directory -Path $BackupDir -Force | Out-Null

# Backup de registro (HKLM y HKCU)
reg export HKLM "$BackupDir\HKLM.reg" /y | Out-Null
reg export HKCU "$BackupDir\HKCU.reg" /y | Out-Null

# Backup de servicios (ignorando servicios protegidos)
Get-Service | ForEach-Object {
    try {
        [PSCustomObject]@{
            Name      = $_.Name
            StartType = $_.StartType
            Status    = $_.Status
        }
    } catch {}
} | Export-Csv "$BackupDir\Services.csv" -NoTypeInformation -Encoding UTF8

