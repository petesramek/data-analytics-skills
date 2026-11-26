[CmdletBinding()]
param(
    [string]$OutputDirectory
)

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot

if ([string]::IsNullOrWhiteSpace($OutputDirectory)) {
    $OutputDirectory = Join-Path $repositoryRoot 'dist'
}
else {
    $OutputDirectory = [System.IO.Path]::GetFullPath($OutputDirectory)
}

$skillFolders = @(
    Get-ChildItem -LiteralPath $repositoryRoot -Directory -Recurse |
        Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md') } |
        Sort-Object -Property FullName
)

if ($skillFolders.Count -eq 0) {
    throw "No folders containing SKILL.md were found under '$repositoryRoot'."
}

$duplicateNames = @($skillFolders | Group-Object -Property Name | Where-Object { $_.Count -gt 1 })
if ($duplicateNames.Count -gt 0) {
    $names = ($duplicateNames | ForEach-Object { $_.Name }) -join ', '
    throw "Duplicate skill folder names would overwrite ZIP files: $names"
}

New-Item -ItemType Directory -Path $OutputDirectory -Force | Out-Null

foreach ($skillFolder in $skillFolders) {
    $archivePath = Join-Path $OutputDirectory ($skillFolder.Name + '.zip')
    Compress-Archive -LiteralPath $skillFolder.FullName -DestinationPath $archivePath -Force
    Write-Output "Created $archivePath"
}

Write-Output "Packaged $($skillFolders.Count) skills."
