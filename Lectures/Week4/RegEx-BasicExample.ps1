# Select-String search in files (2 ways)
# Simple Match without using Get-Content
Select-String -Path access.log -SimpleMatch "honeypot"



# Select-String used with Get-Content to read a file
Get-Content .\access.log | Select-String -SimpleMatch "honeypot" 
$hits = Get-Content .\access.log | Select-String -SimpleMatch "honeypot"
$hits[0]


# Simple keyword search, note the -Pattern Argument. 
# What does Case Sensitive parameter do?
Select-String -Path .\*.* -Pattern "function" -CaseSensitive 
#Get-Content -Path *.* | Select-String -Pattern "function" -CaseSensitive 






# Select-String variation: View only the match or matches in a String
$str = 'This is my SSN: 123-65-6789, not 456-33-4321 please do not share'
$ssn = Select-String  -InputObject $str -Pattern '\d{3}-\d{2}-\d{4}'
Write-Host $ssn.Matches

# Note -AllMatches
$ssn = Select-String  -InputObject $str -Pattern '\d{3}-\d{2}-\d{4}' -AllMatches
Write-Host $ssn.Matches



#Array of string sentences
$data = @(
           "General text without meaning"
           "my ssn is 123-45-6789"
           "some other string"
           "another SSN 123-12-1234"
       )

#$data
#$data.GetType()
#$data.count

# Notice that -match operator prints entire line that contains a match
$data -match '\d\d\d-\d\d-\d\d\d\d'




# If branch to see if SSN exists in string
$ssn = 'This is my SSN: 123-45-6789'
if($ssn -match '\d\d\d-\d\d-\d\d\d\d'){
    Write-Host "This string contains a SSN"
}
