## key shortcuts
## history 
  # To view the history of commands you’ve typed, run the following cmdlet

### Search command 
search using pattern in the command
Get-History |  Select-String -Pattern "Example"

#### Using the ```F8``` key: 
If you wanted to search for a command that _began_ with “p”, 
you’d type “p” on the command line and then repeatedly tap ```F8``` to cycle through commands in your history that begin with “p”.


### save session history and load it later.
Get-History | Export-Clixml -Path .\history-commands.xml 
Add-History -InputObject (Import-Clixml -Path .\history-commands.xml)

## Tips and tricks
## usfule aliases



