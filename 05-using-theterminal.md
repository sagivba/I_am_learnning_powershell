## key shortcuts


* ```Ctrl+End``` -  Delete all the characters in the line after the cursor.
* ```Ctrl+L.Arrow/R.Arrow``` -  Move left/right *one word* at a time.
* ```Ctrl+S``` -    Pause or resume the display of output.
* ```Delete``` -    Delete the character under the cursor
* ```Esc``` -       Clear the current line.

* ```Alt+F7``` -    Clear the command history.
* ```Ctrl+C``` -    Break out of the subprompt or terminate execution.

* ```Tab``` -       Access the tab expansion function (also Shift+Tab).
* ```Pg Up/Dn``` -   Access the first/last command in the command history.

* ```F1``` -   Move the cursor one character to the right on the command line.  At the end of the line, insert one character from the text of your last command.
* ```F2``` -   Create a new command line by copying your last command line up to the character you type.
* ```F3``` -   Complete the command line with the content from your last command line, starting from the current cursor position to the end of the line.
* ```F4``` -   Delete characters from your current command line, starting from the current cursor position up to the character you type.
* ```F5``` -   Scan backward through your command history.
* ```F7``` -   Displays a pop-up window with your command history and allows you to select a command. Use the arrow keys to scroll through the list. Press Enter to select a command to run, or press the Right arrow key to place the text on the command line.
* ```F8``` -   Use text you’ve entered to scan backward through your command history for commands that match the text you’ve typed so far on the command line.
* ```F9``` -   Run a specific numbered command from your command history.   Command numbers are listed when you press F7.


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
Clear-History # or just Alt+F7
```


## Tips and tricks
## usfule aliases
