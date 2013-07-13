$Title = "Thin Provisioning"
$Header =  "Org VDC not set for thin provisioning"
$Comments = "Org VDC thin provisioning: false"
$Display = "Table"
$Author = "Jake Robinson"
$Version = 1.0

# Start of Settings 
# End of Settings

$OrgVDC | Where {$_.ExtensionData.IsThinProvision -eq $false} | Select Name, org, @{n="Thin Provisioning";e={$_.extensiondata.IsThinProvision}}
