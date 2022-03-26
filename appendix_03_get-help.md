# Get-Help
## srech for cmdlet with wild card
- Example 1: `get-help get-*IP*`  - Unsing the Verb-Noun method it is made much easyier 
- Example 2: `get-help Get-NetIPAddress` - Brief review of cmdlet usage
- Example 3: `get-help Get-NetIPAddress -Full` - comprehensive  review of cmdlet usage, *including examples!*
- Example 4: `get-help Get-NetIPAddress -Examples` - only show examples
- Example 5: `get-help Get-NetIPAddress -Online` - Read the online help in your browser
- Example 6: `get-help Get-NetIPAddress -ShowWindow` - Read the help in a window - use settings to explore the help.





## update your help info
```powershell
Update-Help -Force
```

## find cmdlets relatesed to a Noun
```powershell
Get-Command -Noun 'CSV'
gcm '*CSV*'
```
