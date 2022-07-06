param ([string]$v, [string]$r)

Write-host ---------------------------------------------------
Write-host Building Mule Project with Maven
Write-host ---------------------------------------------------
Write-host

$target = Test-Path -Path 'target/'

if (!$target){
    Write-Host "No target file found. Are you in the project root?"
    Write-Host
    exit
}

try {
    mvn clean package -DskipTests=true
    Get-ChildItem -Path "target/" -File | Rename-Item -NewName { $_.BaseName -replace "\d-SNAPSHOT-mule-application", ($v + "-" + $r + $_.Extension) } 
    ii ./target
} catch {
    Write-Output "An Error occurred during build"
    Write-Host
}





