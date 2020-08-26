param ($AppName)
#$AppName=$env:APPNAME
Write-Host $AppName
#Write-Host $env:Build_SourcesDirectory
#dir $(Agent.BuildDirectory)\s
$cdir=$env:Build_SourcesDirectory
Write-Host $cdir
#$cdir=$(echo $(Build.SourcesDirectory))
#Write-Host $cdir
$jsonFilepath="$cdir\pipelineMetadata.json"
#Write-Host $jsonFilePath
$jsondata=Get-Content -Raw -Path $jsonFilePath | ConvertFrom-Json
#Write-Host $jsondata
#$appName = "QMSA"
#$projectkey=$jsondata.$appName.Tool1.ProjectKey
#Write-Host $projectkey
Write-Host "##vso[task.setvariable variable=ProjectKey;]$($jsondata.$AppName.SonarQube.ProjectKey)"