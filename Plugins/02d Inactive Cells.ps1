$Title = "Inactive Cells"
$Header =  "Inactive Cells"
$Comments = "vCloud Cells marked as inactive"
$Display = "Table"
$Author = "Jake Robinson"
$Version = 1.0

# Start of Settings 
# End of Settings



search-cloud -QueryType cell -Filter "isActive==0" | select name, PrimaryIP, version, IsActive