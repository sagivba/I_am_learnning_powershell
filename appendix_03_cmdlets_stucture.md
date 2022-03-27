# cmdlets stucture
list all verb
```
Get-Verb
Get-Verb *et
```
list all nouns
```powershell
gcm * -CommandType cmdlet | group noun -noelement | sort count -Descending | select
Get-Command * -CommandType cmdlet | group noun -noelement | sort count -Descending | select
```



