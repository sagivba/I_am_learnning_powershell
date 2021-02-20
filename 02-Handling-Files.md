# Handling Files

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

## Excle files

## JSON files

## INI files

## XML files


