$localFolder = "C:\Users\loongcy\Desktop\portfolio\receipts_upload"
$s3Bucket = "s3://automated-receipts-cy"

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $localFolder
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

$action = {
    $filePath = $Event.SourceEventArgs.FullPath
    $fileName = $Event.SourceEventArgs.Name
    Write-Host "New file detected: $filePath"

    # Sync the change to S3
    aws s3 cp "$filePath" "$s3Bucket/incoming/$fileName"
}

# Bind the action to Created and Renamed (moved) events
Register-ObjectEvent $watcher "Created" -Action $action
Register-ObjectEvent $watcher "Renamed" -Action $action

# Keep the session alive to monitor
while ($true) { Start-Sleep 5}