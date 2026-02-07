# Network.ps1

$DNS = @("1.1.1.1","1.0.0.1")

Get-NetAdapter | Where-Object {
    $_.Status -eq "Up" -and $_.HardwareInterface
} | ForEach-Object {
    Set-DnsClientServerAddress -InterfaceIndex $_.InterfaceIndex `
        -ServerAddresses $DNS -ErrorAction SilentlyContinue
}

Get-NetAdapter | Where-Object {
    $_.Status -eq "Up" -and $_.NdisPhysicalMedium -eq 9
} | ForEach-Object {
    Get-NetAdapterAdvancedProperty -Name $_.Name -ErrorAction SilentlyContinue |
        Where-Object { $_.DisplayName -match "Transmit|Potencia|Power" } |
        ForEach-Object {
            Set-NetAdapterAdvancedProperty -Name $_.Name `
                -DisplayName $_.DisplayName `
                -DisplayValue "Highest" `
                -NoRestart -ErrorAction SilentlyContinue
        }
}
