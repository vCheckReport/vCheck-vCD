$Title = "General Information"
$Header =  "General Information"
$Comments = ""
$Display = "List"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# End of Settings 

$Info = New-Object -TypeName PSObject -Property @{
	"Number of Orgs:" = (@($Org).Count)
	"Number of Org VDCs:" = (@($OrgVDC).Count)
	"Number of Provider VDCs:" = (@($ProviderVDC).Count)
	"Number of vApps:" = (@($CIvAPP).Count)
	"Number of VMs:" = (@($CIVM).Count)
	"Active VMs:" = (@($CIVM | Where { $_.Status -eq "PoweredOn" }).Count) 
	"In-active VMs:" = (@($CIVM | Where { $_.Status -eq "PoweredOff" }).Count)
}
$Info