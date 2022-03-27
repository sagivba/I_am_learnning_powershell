# Get-Help
## Help and info and aliases
* ```Get-Command``` - Brings up all the commands available for use in your current session.
* ```Get-Help``` - provides quick access to the information you need to run and work with all of the available commands.
  ```powershell
  Get-Help Format-Table
  Get-Help -Name Format-Table
  Format-Table -?
      
  Get-Help Format-Table -Detailed
  Get-Help Format-Table -Full
  ```
* ```Get-Alias``` - list all aliases.  


## sreach and explore  cmdlets with wild cards using `Get-Help`
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
