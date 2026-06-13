param(
  [Parameter(Mandatory = $true, Position = 1)]
  [ValidateSet("windows-x86_64", "linux-x86_64")]
  [Alias("sys")]
  [string]$System = "windows-x86_64",

  # Parameter: 'BUILD TYPE'
  [Parameter(Mandatory = $true, Position = 2)]
  [ValidateSet("Debug", "Release")]
  [Alias("type")]
  [string]$BuildType = "Debug"
)

$cmakeArgs = @(
  "-S .",
  "-B build/$BuildType",
  "-G Ninja",
  "--preset $BuildType-$System",
  "-DCMAKE_BUILD_TYPE=$BuildType"
)

# Print the command that executes
$escaped = $cmakeArgs | ForEach-Object {
  if ($_ -match '/s') { '"{0}"' -f $_ } else { $_ }
}

Write-Host "`nEXECUTING CMAKE COMMAND: " -ForegroundColor Cyan
Write-Host "cmake $escaped" -ForegroundColor Yellow
Write-Host ""

# --- Execute ---
& cmake @cmakeArgs
