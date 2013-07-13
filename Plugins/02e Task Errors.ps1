$Title = "Task Errors"
$Header =  "Tasks that have failed in the last day"
$Comments = "Tasks that have failed in the last day"
$Display = "Table"
$Author = "Jake Robinson"
$Version = 1.0

# Start of Settings 
# End of Settings

Search-Cloud -QueryType AdminTask  -Filter "status!=success" | where {$_.startdate -gt (Get-Date).AddDays(-1)} | select name, ownername, orgname, status, @{n="details";e={$_.AnyAttr[1]."#text"}}