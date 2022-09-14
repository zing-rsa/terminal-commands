param ([string]$v, [string]$r)

Write-host ---------------------------------------------------
Write-host Building Mule Project with Maven
Write-host ---------------------------------------------------
Write-host

try {
    mvn clean package -DskipTests=true
} catch {
    Write-Output "An Error occurred during build"
    Write-Host
}





