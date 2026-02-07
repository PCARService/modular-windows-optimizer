# Power.ps1

# GUID del plan Máximo rendimiento
$UltimateGUID = "e9a42b02-d5df-448d-aa00-03f14749eb61"

# Verificar si existe
$PlanExists = powercfg /list | Select-String $UltimateGUID

if (-not $PlanExists) {
    powercfg -duplicatescheme $UltimateGUID | Out-Null
}

# Activar el plan
powercfg -setactive $UltimateGUID

# Detectar si es portátil
$IsLaptop = Get-CimInstance Win32_Battery -ErrorAction SilentlyContinue

if ($IsLaptop) {
    # Portátil: balance razonable
    powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 5
    powercfg /setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100
} else {
    # Escritorio: máximo rendimiento
    powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMIN 100
    powercfg /setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100
}

powercfg -setactive SCHEME_CURRENT

