# powershell_stop_list_processes
Script created to stop automatically one or more process in windows

This script was created for attend a need to stop a bunch of processes that have the same name, but are stored at different paths.*
*So i decided to share this simple script here.*


Before execute the script, you need to configure in the variables on the head of script at least the type of property(name or path) you will use to identify the process and the variable that represents this property.

#### *e.g.*


To search **one process by name**:

```powershell
$type = 1
$names = 'name_of_process_1_without_extension'
$paths = '','','',''* #LEAVE BLANK
```

To search **various processes by name**:

```powershell
$type = 1
$names = 'name_of_process_1_without_ext','name_of_process_2_without_ext','name_of_process_2_without_ext'
$paths = '','','','' #LEAVE BLANK
```

To search **one process by path**:

```powershell
$type = 2
$names = 'C:\Path\To\The\process.exe'
$paths = '','','','' #LEAVE BLANK
```

To search **various processes by path**:

```powershell
$type = 2
$names =  '' #LEAVE BLANK
$paths = 'C:\Path\To\The\process_1.exe', 'C:\Path\To\The\process_2.exe', 'C:\Path\To\The\process_3.exe'
```

