# Performance.ps1

# Ajustar para mejor rendimiento
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name DragFullWindows -Value "1"
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name FontSmoothing -Value "2"
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name FontSmoothingType -Value 2
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name UserPreferencesMask -Value ([byte[]](0x90,0x12,0x03,0x80,0x10,0x00,0x00,0x00))

# Prioridad a programas
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" `
    -Name Win32PrioritySeparation -Value 38
