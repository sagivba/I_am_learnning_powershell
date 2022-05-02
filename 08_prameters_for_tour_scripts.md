
## Using `$Args`
You can refer to unnamed arguments using the $args array
Example:
```powershell
"Argument 0 is " + $Args[0]
"Argument 1 is " + $Args[1]
```
Lets Run:
```
PS c:\>./demo_args.ps1 "x" "y"
"First argument is Alpha
"Second argument is Beta
```
# Using Param
Use a param statement, which is a comma separated list of variables.
```powershell
param (
    [string]$name = 'Sagiv', 
    [int]$age = 45,    
    [string]$username = $(throw "-username is required."),
    [string]$password = $( Read-Host -asSecureString "Input password" ),
    [switch]$as_admin = $false
)
```
Output:
```
PS C:\tmp\test> .\params-example.ps1 -username sagivba
Your name is 'Sagiv' and ag is 45
The username is sagivba
The True/False switch argument is False
```

Setting the switch parameters values:
```
PS C:\tmp\test> .\params-example.ps1 -name John -username someone -as_admin
Your name is 'John' and ag is 45
The username is someone
The True/False switch argument is True
```

