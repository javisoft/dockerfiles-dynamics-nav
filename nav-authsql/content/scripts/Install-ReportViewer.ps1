$process = 'msiexec.exe'
$arguments = '/i "C:\\install\\content\\DynamicsNavDvd\\Prerequisite Components\\Microsoft Report Viewer\\ReportViewer.msi" /quiet /qn /norestart /log "C:\\install\\content\\LOG\\installreportviewer.log"'

$res = Start-Process -FilePath $process -ArgumentList $arguments -Wait -PassThru

while ($res.HasExited -eq $false) {
    Write-Host "Waiting for $process..."
    Start-Sleep -s 1
}

$exitCode = $res.ExitCode