$Title = "Shadow VMs"
$Header =  "Shadow VMs"
$Comments = "Virtual Machines that have been fast provisioned"
$Display = "Table"
$Author = "Jake Robinson"
$Version = 1.0

# Start of Settings 
# End of Settings

Search-Cloud -QueryType AdminShadowVM | select Name, primaryVmName, Status
