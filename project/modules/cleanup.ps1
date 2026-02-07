# Cleanup.ps1

$Paths = @(
    "$env:TEMP\*",
    "C:\Windows\Temp\*",
    "C:\Windows\Logs\*",
    "C:\Windows\Logs\CBS\*",
    "C:\Windows\Logs\DISM\*",
    "C:\Windows\Panther\*"
)

foreach ($p in $Paths) {
    Remove-Item $p -Recurse -Force -ErrorAction SilentlyContinue
}

wevtutil el | ForEach-Object { wevtutil cl $_ } 2>$null
