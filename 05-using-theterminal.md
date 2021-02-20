## key shortcuts
## history
*Note to myself!*  history is deleted after the sission ends. is there a way to change this???

To view the history of commands you’ve typed, run the  cmdlet  ```Get-History``` or alias ```h```
By default, the Get-History cmdlet only shows the 32 most recent history entries.
Use the  ```-Count``` option to specify hthe number of history entries you want:

```powershell
Get-History -Count 1000
h -Count 1000 | Select-String -Pattern "Example"
h -Count 1000 | Format-List -Property *
```

### Search command

```powershell
search using pattern in the command
Get-History |  Select-String -Pattern "My-Func"
h |  Select-String -Pattern "My-Func"
```

### Run Commands From Your History

```powershell
Invoke-History 25 # run the 25 command on yoer history
```

### Using the ```F8``` key:
If you wanted to search for a command that _began_ with “p”,
you’d type “p” on the command line and then repeatedly tap `F8` to cycle through commands in your history that begin with “p”.


### save session history and load it later.

```powershell
Get-History | Export-Clixml -Path .\history-commands.xml
Add-History -InputObject (Import-Clixml -Path .\history-commands.xml)
```

### Clear Your PowerShell History

```powershell
Clear-History
```


## Tips and tricks
## usfule aliases
