* ```Get-Command``` - Brings up all the commands available for use in your current session.
* ```Get-Help``` - provides quick access to the information you need to run and work with all of the available commands.
      ```powershell
      Get-Help Format-Table
      Get-Help -Name Format-Table
      Format-Table -?
      
      Get-Help Format-Table -Detailed
      Get-Help Format-Table -Full
      ```
* ```Get-Content``` - read a text file (alias ```gc```)
      ```powershell
      gc log.txt | select -first 10 # head
      gc -TotalCount 10 log.txt     # also head
      
      gc log.txt | select -last 10  # tail
      gc -Tail 10 log.txt           # also tail - but faster
      
      ```      
* ```Get-Alias``` - list all aliases.
* ```ConvertTo-HTML``` - pipe the output from another command into this:
      ```powershell
      get-alias | convertto-html > aliases.htm
      ```

* ```Export-CSV``` - Converts object to a CSV file
* ```Import-Csv``` - Converts CSV file to an object
* ```Get-Service``` - what services are installed on the system.

* `````` - 
      ```powershell
      ```
