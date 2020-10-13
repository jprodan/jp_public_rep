#################################################################################################################################
# getFirstRecChar.ps1
# returns the first reccuring character in the input string
# aborts is string is empty
#################################################################################################################################

if ($args[0] -ne $null) {
    $inputString  = $args[0] }
else { write-host "Abort, need a string to parse" 
    exit }

$strArray = $inputString.ToCharArray()     
foreach ($item in $strArray) {
    $ndx = @()
    $ndx = (0..($strArray.Count-1)) | where {$strArray[$_] -eq $item} 
    if ($ndx -gt 1) {
        write-host $item
        break}
}
