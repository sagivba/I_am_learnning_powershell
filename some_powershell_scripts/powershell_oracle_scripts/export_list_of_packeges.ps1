

function Get-ExportCmd {
	Param (
	[string]$User,
	[string]$Pass,
	[string]$DB ,
	[string]$IncludeList,
    [string]$Directory,
    [string]$date_str
	)
	# End of Parameters
	$CMD="expdp $User/$Pass@$DB schemas=$User INCLUDE=$IncludeList SQLFILE=$FileName directory=DATA_EXP_DIR dumpfile=$User.$date_str.dmp logfile=expdp.$User.$date_str.log"
	return $CMD
}

function Get-ImportCmd {
	Param (
	[string]$User,
	[string]$Pass,
	[string]$DB ,
	[string]$FileName,
    [string]$Directory,
    [string]$date_str
	)
	# End of Parameters
	$CMD="impdp $User/$Pass@$DB sqlfile=$FileName  directory=$Directory dumpfile=$User.$date_str.dmp logfile=impdp.$User.$date_str.log"
	return $CMD
}

function Get-IncludeList {
    Param (
	[string]$IncludeFile
    )
    echo $IncludeFile
    [array]$lines = get-content $IncludeFile
    
    [string]$pkg_lst =""
    foreach ($line in $lines){
        #PACKAGE:"IN ('DLR_PKG', 'CRM_PKG')"
        $pkg_lst += ",\'"+$line.ToUpper()+"\'"
    }
    $pkg_lst=$pkg_lst.Substring(1) # trim first comma
    $pkg_lst='PACKAGE:\"IN \(' + $pkg_lst +'\)\"'
    echo $pkg_lst
    return $pkg_lst
}


$date = get-date
$date_str=$date.ToString("yyyy-MM-dd")

$pkg_lst = Get-IncludeList ".\pckges_list.txt"

Get-ExportCmd "DB_USER" "123" "oracletest" "$pkg_lst" "DATA_EXP_DIR"  $date_str| echo
Get-ImportCmd "DB_USER" "123" "oracletest" "01-list.sql"  "DATA_EXP_DIR" $date_str | echo


