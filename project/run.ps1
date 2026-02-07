# Run.ps1

$BasePath  = $PSScriptRoot
$Modules   = Join-Path $BasePath "modules"

. "$Modules\lang.ps1"

$IsAdmin = ([Security.Principal.WindowsPrincipal] `
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $IsAdmin) {
    Write-Error $Text.ADMIN
    exit 1
}

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force

& "$BasePath\optimize.ps1"