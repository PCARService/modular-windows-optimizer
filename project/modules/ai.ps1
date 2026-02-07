$CopilotPolicy = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot"
if (-not (Test-Path $CopilotPolicy)) {
    New-Item -Path $CopilotPolicy -Force | Out-Null
}
Set-ItemProperty -Path $CopilotPolicy -Name TurnOffWindowsCopilot -Value 1

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" `
    -Name ShowCopilotButton -Value 0

$RecallPolicy = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"
if (-not (Test-Path $RecallPolicy)) {
    New-Item -Path $RecallPolicy -Force | Out-Null
}
Set-ItemProperty -Path $RecallPolicy -Name DisableRecall -Value 1
Set-ItemProperty -Path $RecallPolicy -Name DisableAIDataAnalysis -Value 1