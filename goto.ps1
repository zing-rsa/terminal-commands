param (
    [string]$n = "default"
)
if ($n -eq "vicitude"){
    Set-Location C:\users\kritz\documents\vicitude
}elseif($n -eq "desktop"){
    Set-Location C:\users\kritz\desktop
}elseif($n -eq "docs"){
    Set-Location C:\users\kritz\documents
}elseif($n -eq "downloads"){
    Set-Location C:\users\kritz\downloads
}elseif($n -eq "projects"){
    Set-Location C:\users\kritz\documents\Code_Projects
}elseif($n -eq "libfin"){
    Set-Location C:\users\kritz\documents\vicitude\LibfinRepos
}else{
    write-output "Not found"
}