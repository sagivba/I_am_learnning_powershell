# Exploring aliases
## alias
lists all aliases

##  `gal` or `Get-Alias`
the `gal` command hlps to explore aliases
```powershell
PS C:\Users\sagivba> gal gal

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           gal -> Get-Alias
```
## find cmdlets relatesed to service
```powershell
Get-Command -Noun 'Service'
Get-Command -Noun 'Serv*'
```
## exploring aliases
### which aliases exists for `Get-Service` and `Start-Service` 
```powershell
PS C:\Users\sagivba> gal -Definition  Get-Service

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           gsv -> Get-Service
```
### Now late find related aliases
```powershell 
PS C:\Users\sagivba> gal *sv*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           epcsv -> Export-Csv
Alias           gsv -> Get-Service
Alias           ipcsv -> Import-Csv
Alias           sasv -> Start-Service
Alias           spsv -> Stop-Service
Alias           sv -> Set-Variable
```
