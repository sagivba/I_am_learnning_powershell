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

## Read files, head,tail...  
* ```Get-Content``` - read a text file (alias ```gc``` )
  ``` powershell
  gc log.txt | select -first 10 # head
  gc -TotalCount 10 log.txt     # also head

  gc log.txt | select -last 10  # tail
  gc -Tail 10 log.txt           # also tail - but faster
  ```
## Object exploration
* ```Get-Member``` - Use Get-Member to see an object’s properties and methods
  ```powershell
  PS C:\tmp> $iris_obj[0] | Get-Member


     TypeName: Selected.System.Management.Automation.PSCustomObject

  Name         MemberType   Definition
  ----         ----------   ----------
  Equals       Method       bool Equals(System.Object obj)
  GetHashCode  Method       int GetHashCode()
  GetType      Method       type GetType()
  ToString     Method       string ToString()
  petal.length NoteProperty System.String petal.length=1.4
  petal.width  NoteProperty System.String petal.width=.2
  sepal.length NoteProperty System.String sepal.length=5.1
  sepal.width  NoteProperty System.String sepal.width=3.5
  variety      NoteProperty System.String variety=Setosa
  ```

## Handling CSV files
* ```Export-CSV``` - Converts object to a CSV file
  ```powershell
  $iris_obj |  Export-Csv -Path c:\tmp\iris-from-bjects.csv
  ```

* ```Import-Csv``` - Converts CSV file to an object
  ```powershell
  PS C:\tmp> $iris_obj=import-csv -Path .\iris.csv
  PS C:\tmp> $iris_obj | select -First 2


  sepal.length : 5.1
  sepal.width  : 3.5
  petal.length : 1.4
  petal.width  : .2
  variety      : Setosa

  sepal.length : 4.9
  sepal.width  : 3
  petal.length : 1.4
  petal.width  : .2
  variety      : Setosa
  ```
# Converting data to HTML
* ```ConvertTo-HTML``` - pipe the output from another command into this:
  ```powershell
  get-alias | convertto-html > aliases.htm
  ```

# OS operation
* ```Get-Service``` - what services are installed on the system.

* ```Get-Process``` - process info
  ```powershell
  $firefox = Get-Process firefox -ErrorAction SilentlyContinue
  get-process | where-object {$_.HasExited} # Display processes that 
                                            # were running on the computer, 
                                            # but are now stopped
  
  ```
      
* ```Stop-Process``` - kill
 ```powershell
 Stop-Process -processname notepad
 $firefox | Stop-Process -Force
 stop-process -id $PID
 stop-process -id 6464 -confirm -passthru # prompt before stopping the process
 ```

* ```Invoke-Command``` - Run commands on local and remote computers.
  ```powershell
  invoke-command -filepath c:\PS-SCRIPTS\BUILD.ps1 -computerName SQL-SERVER-PROD3
  ```
## Filtering data
* ```Where-Object``` - as it enables you to take a dataset for filtering
  ```powershell
  PS C:\tmp>  Get-Service | Where-Object {$_.Status -eq 'Running' -and  $_.name -eq "Spooler"}

  Status   Name               DisplayName
  ------   ----               -----------
  Running  Spooler            Print Spooler
  ```

* `````` - 
      ```powershell
      ```

* `````` - 
      ```powershell
      ```

* `````` - 
      ```powershell
      ```

