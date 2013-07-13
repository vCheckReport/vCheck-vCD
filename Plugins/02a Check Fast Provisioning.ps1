$Title = "Fast Provisioning"
$Header =  "OrgVDC(s) with Fast Provisioning Enabled"
$Comments = "OrgVDC(s) with Fast Provisioning Enabled"
$Display = "Table"
$Author = "Jake Robinson"
$Version = 1.0

# Start of Settings 
# End of Settings

$OrgVDC | Where {$_.ExtensionData.UsesFastProvisioning -eq $true} | Select Name, org, @{n="Fast Provisioning";e={$_.extensiondata.usesfastprovisioning}}
