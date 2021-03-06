$Title = "Default Pay as you Go Org VDC CPU Mhz"
$Header =  "OrgVDC(s) still have the default CPU MHz allocation"
$Comments = "When setting up an OrgVDC the default CPU MHz allocation is 0.26 MHz this may impact the performance of VMs in this Org."
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# End of Settings

$OrgVDC | Where {$_.AllocationModel -eq "PayAsYouGo"} | Where {$_.ExtensionData.VCpuInMhz -eq 260} | Select Name, AllocationModel, Status

