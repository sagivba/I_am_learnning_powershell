# Handling Files

## Read from a file and Create/Apend a text file
```powershell
$text = Get-Content

```powershell

### Creating a file - will overwrite exsits file
```powershell
$text | Set-Content 'file.txt'
$text | Out-File 'file.txt'
$text > 'file.txt'
```

### Prevent an existing file from being overwritten
```powershell
$text | Out-File -FilePath file.txt -NoClobber
```

### Append to a file (will create it if not exisits):
```powershell
$text | Add-Content 'file.txt'
$text | Out-File 'file.txt' -Append
$text >> 'file.txt'
```

## Itrate over lines:
This is one liner:
```powershell
Get-Content .\text_file.txt| ForEach-Object {My-Function $_} 
```
Another example of mulitple lines: 
```powershell
env >env.txt # creates en example input file

ForEach ($line in  (Get-Content .\env.txt)){
  $keys=$line.split('=')[0]
  $keys # pritns the key
}
```

## CSV files
### ```Import-Csv``` /```Export-CSV```
Converts from CSV file to an objects and an object to a CSV file
```powershell
$iris_obj=import-csv -Path .\iris.csv
$iris_obj | Export-Csv -Path c:\tmp\iris-from-bjects.csv
$iris_obj | select -First 1

sepal.length : 5.1
sepal.width  : 3.5
petal.length : 1.4
petal.width  : .2
variety      : Setosa
```

## Excle files

## JSON files

## INI files

## XML files

## yaml

