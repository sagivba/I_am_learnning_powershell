# copy files from source dir to dest using list of files from text file
$base_dir    = "C:\ourpath"
$source      = "$base_dir\source_dir"
$destination = "$base_dir\dest_dir"
Write-Host ("INFO: base_dir='$base_dir'") -ForegroundColor Green
Write-Host ("INFO: source=$source") -ForegroundColor Green
Write-Host ("INFO: destination=$destination") -ForegroundColor Green


# list of files from source directory that I want to copy to destination folder

$file_list = Get-Content "$base_dir\files_to_copy.txt"
New-Item -ItemType Directory -path $destination -force

# Copy each file
foreach ($file in $file_list){
	try{
		$file=$file.trim()
		$file=$file.split('.')[0]+".fmb"
		Copy-Item "$source\$file" "$destination\$file"
		Write-Host ("INFO: Copy-Item '$source\$file' '$destination\$file'") -ForegroundColor Green
	}
	catch{
		Write-Host ("ERROR:Failed to copy file '$file'") -ForegroundColor Red
		Continue
		
	}
}

dir $destination