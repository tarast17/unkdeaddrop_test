Write-Host "[Stage2]"

$info = @{
    ComputerName = $env:COMPUTERNAME
    UserName = $env:USERNAME
    Time = Get-Date
}

$info | ConvertTo-Json

powershell.exe `
    -ExecutionPolicy Bypass `
    -File "$PSScriptRoot\stage3.ps1"
