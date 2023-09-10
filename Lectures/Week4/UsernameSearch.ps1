# Username matches
$arr = "llhundt","llhund1234","profx","tstark","teststudent5678"
#$arr = Get-Content .\UserNameSearchUsers.txt

#FacStaff username match
$arr -match "^\D*$"
#Write-Host ($arr -match "^\D*$")

#Student username match
$arr -match ".\d\d\d\d"