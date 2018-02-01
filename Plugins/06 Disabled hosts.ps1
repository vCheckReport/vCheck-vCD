$Title = "Disabled hosts"
$Header =  "Disabled hosts"
$Comments = "The following hosts are disabled"
$Display = "Table"
$Author = "Robert van den Nieuwendijk"
$Version = 1.0

# Start of Settings
# End of Settings

$CIHost | Where-Object {-not $_.IsEnabled} | Select-Object -Property Name,IsEnabled,VcName
