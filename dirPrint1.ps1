$rootDir = "\\dc1-fs-01\Ingestion Staging\SAG\Working"
$outputFile = "\\dc1-fs-01\Ingestion Staging\SAG\Outfile3.txt"

$files = Get-ChildItem -Path $rootDir -Recurse -File
foreach ($file in $files)
{
    $combined = "$($file.DirectoryName)|$($file.Name)|$($file.FullName)"
    Add-Content -Path $outputFile -Value $combined
}
