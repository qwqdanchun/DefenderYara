
rule Trojan_Win32_VB_VM{
	meta:
		description = "Trojan:Win32/VB.VM,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 0d 00 00 "
		
	strings :
		$a_02_0 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 [0-10] 2e 00 65 00 78 00 65 00 } //10
		$a_02_1 = {5c 00 61 00 6c 00 6c 00 20 00 75 00 73 00 65 00 72 00 73 00 5c 00 73 00 74 00 61 00 72 00 74 00 20 00 6d 00 65 00 6e 00 75 00 5c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 [0-10] 2e 00 65 00 78 00 65 00 } //10
		$a_00_2 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 } //10 autorun
		$a_00_3 = {4d 00 79 00 20 00 4d 00 75 00 73 00 69 00 63 00 2e 00 65 00 78 00 65 00 } //10 My Music.exe
		$a_00_4 = {47 00 3a 00 5c 00 } //5 G:\
		$a_00_5 = {50 00 3a 00 5c 00 } //5 P:\
		$a_00_6 = {51 00 3a 00 5c 00 } //5 Q:\
		$a_00_7 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 \CurrentVersion\Policies\System
		$a_00_8 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //1 DisableTaskMgr
		$a_00_9 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //1 DisableRegistryTools
		$a_00_10 = {4e 00 6f 00 46 00 6f 00 6c 00 64 00 65 00 72 00 4f 00 70 00 74 00 69 00 6f 00 6e 00 73 00 } //1 NoFolderOptions
		$a_00_11 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //1 HideFileExt
		$a_00_12 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 } //1 \Windows NT\CurrentVersion\Winlogon
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5+(#a_00_6  & 1)*5+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=50
 
}