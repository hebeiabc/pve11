# Create RDP user with strong password
Add-Type -AssemblyName System.Security
$charSet = @{
  Upper   = [char[]](65..90)
  Lower   = [char[]](97..122)
  Number  = [char[]](48..57)
  Special = ([char[]](33..47) + [char[]](58..64) + [char[]](91..96) + [char[]](123..126))
}
$rawPassword = @()
$rawPassword += $charSet.Upper | Get-Random -Count 4
$rawPassword += $charSet.Lower | Get-Random -Count 4
$rawPassword += $charSet.Number | Get-Random -Count 4
$rawPassword += $charSet.Special | Get-Random -Count 4
$password = -join ($rawPassword | Sort-Object { Get-Random })
$securePass = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser -Name "moti" -Password $securePass -AccountNeverExpires
Add-LocalGroupMember -Group "Administrators" -Member "moti"
Add-LocalGroupMember -Group "Remote Desktop Users" -Member "moti"
echo "RDP_CREDS=User: moti | Password: $password" >> $env:GITHUB_ENV
if (-not (Get-LocalUser -Name "moti")) { throw "User creation failed" }
