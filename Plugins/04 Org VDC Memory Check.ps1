$Title = "Org VDCs with memory under x Percent free"
$Header =  "Org VDCs with memory under x Percent free"
$Comments = "The following OrgVDC(s) are about to run out of memory"
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings
# Please specify the Percentage of storage space you would not like your ProviderVDCs to go under.
$MemPercFree = 20
# End of Settings

$OrgvDC | Where { $_.AllocationModel -eq "AllocationPool" } | Select Name, `
	@{N="MemRemainingGBPerc";E={[Math]::Round((100-($_.MemoryUsedGB*100/$_.MemoryLimitGB)),2)}}`
	| Where { $_.MemRemainingGBPerc -lt $MemPercFree }