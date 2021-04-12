param ([string]$v, [string]$b)

Write-host ---------------------------------------------------
Write-host Building with maven
Write-host ---------------------------------------------------
Write-host

$target = Test-Path -Path 'target/'

if (!$target){
    Write-Host No target file found
    Write-Host
    exit
}

try {
    mvn clean package -DskipTests=true
    Get-ChildItem -Path "target/" -File | Rename-Item -NewName { $_.BaseName -replace "0-SNAPSHOT-mule-application", ($v + "_" + $b + $_.Extension) } 
    cd target
    ii .
    cd .. 
} catch {
    Write-Output An Error occurred during build
    Write-Host
}





