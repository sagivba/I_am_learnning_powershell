# Get-Help
## srech for cmdlet with wild card
- Example 1: `get-help get-*IP*`  - Unsing the Verb-Noun method it is made much easyier 
- Example 2: `get-help Get-NetIPAddress` - Brief review of cmdlet usage
- Example 3: `get-help Get-NetIPAddress -Full` - comprehensive  review of cmdlet usage, *including examples!*
```




## update your help info
```powershell
Update-Help -Force
```

## find cmdlets relatesed to a Noun
```powershell
Get-Command -Noun 'CSV'
gcm '*CSV*'
```
