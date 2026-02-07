# Services.ps1

$ServicesToDisable = @(
    "Fax",
    "MapsBroker",
    "WSearch",
    "RetailDemo"
)

foreach ($svc in $ServicesToDisable) {
    $service = Get-Service -Name $svc -ErrorAction SilentlyContinue
    if ($service) {
        Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
    }
}

