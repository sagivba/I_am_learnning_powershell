# Objects

## list roperties and methods
 - `Get-Member` - Gets the properties and methods of objects.
 - `gm` is alias for `Get-Member`
 Examples:
 -   `Get-Process | gm` - Gets complete list of the properties and methods of process object
 -   `Get-Process | gm *id*` 

## select to properties display 
Gets the properties and methods 
```powershell
 Get-Process note* | select-object -Property id,name
 or 
 ps note* | select -Property id,name

   Id Name
   -- ----
14956 notepad
12132 notepad++
```
## filtering - where 

```powershell
Get-Process chrom* | select-object -Property id,name,cpu | where -Property cpu -gt 1000 | sort -Property cpu
or
ps chrom* | select -Property id,name,cpu | where {$_.cpu -gt 1000} | sort {$_.cpu}


   Id Name           CPU
   -- ----           ---
 8396 chrome 1053.046875
10948 chrome 1847.171875
  260 chrome 5630.421875
```

## sorting

```powershell
 Get-Process note* | select-object -Property id,name | sort -Property name 
 or 
 ps note* | select -Property id,name |  sort {$_.name}  

   Id Name
   -- ----
14956 notepad
12132 notepad++
```

