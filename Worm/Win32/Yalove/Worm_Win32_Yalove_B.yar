
rule Worm_Win32_Yalove_B{
	meta:
		description = "Worm:Win32/Yalove.B,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {5b 41 75 74 6f 52 75 6e 5d 90 02 15 6f 70 65 6e 3d 90 02 20 73 68 65 6c 6c 65 78 65 63 75 74 65 3d 90 02 20 73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 3d 90 00 } //1
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 59 00 61 00 68 00 6f 00 6f 00 5c 00 70 00 61 00 67 00 65 00 72 00 5c 00 56 00 69 00 65 00 77 00 5c 00 59 00 4d 00 53 00 47 00 52 00 5f 00 62 00 75 00 7a 00 7a 00 } //1 Software\Yahoo\pager\View\YMSGR_buzz
		$a_00_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 59 00 61 00 68 00 6f 00 6f 00 5c 00 70 00 61 00 67 00 65 00 72 00 5c 00 56 00 69 00 65 00 77 00 5c 00 59 00 4d 00 53 00 47 00 52 00 5f 00 4c 00 61 00 75 00 6e 00 63 00 68 00 63 00 61 00 73 00 74 00 } //1 Software\Yahoo\pager\View\YMSGR_Launchcast
		$a_00_3 = {53 00 68 00 6f 00 77 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //1 ShowSuperHidden
		$a_00_4 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //1 HideFileExt
		$a_00_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_6 = {53 68 65 6c 6c 45 78 65 63 75 74 65 57 } //1 ShellExecuteW
		$a_00_7 = {4e 00 6f 00 44 00 72 00 69 00 76 00 65 00 54 00 79 00 70 00 65 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 } //1 NoDriveTypeAutoRun
		$a_00_8 = {5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //1 \Startup
		$a_03_9 = {8d 45 fc 8b cb ba 90 01 04 e8 90 01 02 ff ff 68 02 00 00 80 8d 45 f8 8b 55 fc e8 90 01 02 ff ff 8b 45 f8 b9 90 01 04 ba 90 01 04 e8 90 01 02 ff ff 33 c0 5a 59 59 64 89 10 68 90 01 04 8d 45 f8 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_03_9  & 1)*1) >=10
 
}