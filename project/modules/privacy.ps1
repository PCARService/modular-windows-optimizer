# Privacy.ps1

$FocusPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\FocusAssist"

if (-not (Test-Path $FocusPath)) {
    New-Item -Path $FocusPath -Force | Out-Null
}

Set-ItemProperty -Path $FocusPath -Name FocusAssist -Value 0
Set-ItemProperty -Path $FocusPath -Name FocusAssistMode -Value 0

# Diagnóstico y feedback
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" `
    -Name AllowTelemetry -Value 0 -Type DWord


