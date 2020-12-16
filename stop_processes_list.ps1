# TYPES - Here you will select the way that you want to use to stop the process using a integer who represents your choice.
# Type 1 - Stop the processes by name
# Type 2 - Stop the processes by path
# e.g. 1
$type = 0

# NAME - Name of processes(without the extension) that will be stopped. 
# They need to be between aposthrophes and, if have more than one, separated by commas.
# e.g. 'CHROME', 'MSPAINT', 'EXPLORER'
$names = ''

# PATHS - Literal paths of executable file that is related with the process 
# They need to be between aposthrophes and, if have more than one, separated by commas.
# e.g. 'C:\Windows\system32\mspaint.exe', 'C:\Windows\system32\notepad.exe', 'C:\Program Files\Windows NT\Accessories\wordpad.exe'
$paths = '', '', ''

#################################
# Do not edit below
#################################

$processes = Get-Process


function killpc( $pcpid ){
        
        Write-Host "#------------------------#"
        Write-Host "Process: "$process.Name
        Write-Host "#------------------------#"
        Write-Host "Path: "$process.Path
        Write-Host "ID: "$process.Id
        kill -Force $pcpid -ErrorAction SilentlyContinue
}


function getpc ($type, $names, $paths){


foreach ( $process in $processes ) {
           
$pcpid = $process.Id

 if ($type -eq 1) {

     foreach ( $name in $names ) { 
  
        if($process.Name -eq $name ) { 

            killpc( $pcpid )
        }

     }
    

 }elseif($type -eq 2){

    
    foreach ( $path in $paths ) {
       
        if($process.Path -eq $path) { 
        
            killpc( $pcpid )
        }
    }

 }
 
 
}

exit

}

getpc $type $names $paths
