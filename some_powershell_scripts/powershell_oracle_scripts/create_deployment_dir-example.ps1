param (
    [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)] 
    [string]$dir 
)

if ($dir.Length -le 2 ){
    throw  "Error:Too short  iteration_dir name"   
}
$fdate=Get-Date -Format "yyyyMM"
 

$version_dir = "_V001"
$base_path = "T:\BI\redgate_deployment"
$deploy_template_dir = "$base_path\__DEPLOY_TEMPLATE"
$iteration_dir = "$dir"
$destination_dir = "$base_path\$iteration_dir\$version_dir"
Write-host "" 

if ( New-Item -ItemType Directory  -Path $destination_dir ){
    # Copy-item  -Verbose $deploy_template_dir/* -Destination $destination_dir
    Copy-item  $deploy_template_dir/* -Destination $destination_dir
}


if  ( test-path "$destination_dir" ){
   Write-host "Info : The dir is $destination_dir" -fore green 
   Write-host ""
   Get-ChildItem $destination_dir| ForEach-Object { $t= ($_.CreationTime| Get-Date -Format "yyyy-MM-dd HH:mm:ss"); "{0,-12} {1}" -f $t,$_.FullName }
   Write-host ""
}
else{
    Write-Error "Error: '$destination_dir' does not exists!"
}


Write-host  "Info : Please check '$destination_dir'" -fore green