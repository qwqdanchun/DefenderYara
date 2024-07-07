
rule Virus_Win32_VB_CV{
	meta:
		description = "Virus:Win32/VB.CV,SIGNATURE_TYPE_PEHSTR,32 00 2d 00 22 00 00 "
		
	strings :
		$a_01_0 = {53 00 68 00 75 00 74 00 20 00 44 00 6f 00 77 00 6e 00 20 00 41 00 66 00 74 00 65 00 72 00 20 00 31 00 35 00 20 00 6d 00 69 00 6e 00 73 00 } //10 Shut Down After 15 mins
		$a_01_1 = {5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 20 00 42 00 61 00 63 00 6b 00 75 00 70 00 73 00 5c 00 56 00 42 00 4d 00 5c 00 56 00 42 00 50 00 5c 00 56 00 69 00 72 00 75 00 73 00 5c 00 } //10 \Desktop Backups\VBM\VBP\Virus\
		$a_01_2 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //10 C:\Program Files\Microsoft Visual Studio\VB98\VB6.OLB
		$a_01_3 = {4c 69 6d 69 74 50 72 6f } //1 LimitPro
		$a_01_4 = {4c 00 69 00 6d 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 Limit.exe
		$a_01_5 = {52 75 6e 4d 65 } //1 RunMe
		$a_01_6 = {53 68 75 74 4d 73 67 } //1 ShutMsg
		$a_01_7 = {53 68 75 74 44 6f 77 6e } //1 ShutDown
		$a_01_8 = {47 65 74 41 62 73 4e 61 6d } //1 GetAbsNam
		$a_01_9 = {44 69 73 74 72 69 62 75 74 65 } //1 Distribute
		$a_01_10 = {43 68 65 63 6b 3d 4c 69 6d 69 74 50 72 6f } //5 Check=LimitPro
		$a_01_11 = {64 00 65 00 6c 00 65 00 74 00 65 00 66 00 69 00 6c 00 65 00 } //5 deletefile
		$a_01_12 = {64 00 65 00 6c 00 65 00 74 00 65 00 66 00 6f 00 6c 00 64 00 65 00 72 00 } //5 deletefolder
		$a_01_13 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 C:\windows\regedit.exe
		$a_01_14 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //1 C:\windows\system32\cmd.exe
		$a_01_15 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 2e 00 63 00 6f 00 6d 00 } //1 C:\windows\system32\command.com
		$a_01_16 = {43 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 C:\windows\system32\taskmgr.exe
		$a_01_17 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //1 C:\WINDOWS\system32\dllcache\cmd.exe
		$a_01_18 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 2e 00 63 00 6f 00 6d 00 } //1 C:\WINDOWS\system32\dllcache\command.com
		$a_01_19 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 C:\WINDOWS\system32\dllcache\taskmgr.exe
		$a_01_20 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //1 C:\WINDOWS\system32\dllcache\regedit.exe
		$a_01_21 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 6d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //1 C:\WINDOWS\system32\dllcache\msconfig.exe
		$a_01_22 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 70 00 63 00 68 00 65 00 61 00 6c 00 74 00 68 00 5c 00 68 00 65 00 6c 00 70 00 63 00 74 00 72 00 5c 00 62 00 69 00 6e 00 61 00 72 00 69 00 65 00 73 00 5c 00 6d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //1 C:\WINDOWS\pchealth\helpctr\binaries\msconfig.exe
		$a_01_23 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //1 LookupPrivilegeValueA
		$a_01_24 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //2 AdjustTokenPrivileges
		$a_01_25 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //2 OpenProcessToken
		$a_01_26 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_27 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 48 00 69 00 64 00 64 00 65 00 6e 00 5c 00 53 00 48 00 4f 00 57 00 41 00 4c 00 4c 00 } //4 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL
		$a_01_28 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [autorun]
		$a_01_29 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 autorun.inf
		$a_01_30 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 } //2 shellexecute=
		$a_01_31 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 61 00 75 00 74 00 6f 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //2 shell\auto\command=
		$a_01_32 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //2 shell\open\command=
		$a_01_33 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //2 shell\explore\command=
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*5+(#a_01_11  & 1)*5+(#a_01_12  & 1)*5+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*2+(#a_01_25  & 1)*2+(#a_01_26  & 1)*1+(#a_01_27  & 1)*4+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*2+(#a_01_31  & 1)*2+(#a_01_32  & 1)*2+(#a_01_33  & 1)*2) >=45
 
}