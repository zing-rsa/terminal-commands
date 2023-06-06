param (
    [string]$n  = "default",
    [switch]$ls = $false
)

$locations = @{
    vicitude  = "C:\users\kritz\documents\vicitude"
    desktop   = "C:\users\kritz\desktop"
    landing   = "C:\users\kritz\documents\landing"
    docs      = "C:\users\kritz\documents"
    downloads = "C:\users\kritz\downloads"
    projects  = "C:\users\kritz\documents\Code_Projects"
    libfin    = "C:\users\kritz\documents\vicitude\LibfinRepos"
    temp      = "C:\users\kritz\desktop\temp"
}

if ($ls) {
    $locations
} elseif ($locations.ContainsKey($n)) {
    Set-Location $locations.$n
} else {
    Write-Output "Location key not found."
}
