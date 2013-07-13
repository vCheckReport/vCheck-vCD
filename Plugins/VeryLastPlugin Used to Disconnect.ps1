# Start of Settings
# End of Settings
 
# Everything in this script will run at the end of vCheck
If ($CIConnection) {
  $CIConnection | Disconnect-CIServer -Confirm:$false
}

$Title = "Disconnecting from vCD"
$Display = "None"
$Author = "Alan Renouf"
$Version = 1.0
