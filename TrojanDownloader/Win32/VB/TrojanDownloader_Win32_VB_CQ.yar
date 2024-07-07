
rule TrojanDownloader_Win32_VB_CQ{
	meta:
		description = "TrojanDownloader:Win32/VB.CQ,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 43 69 70 68 65 72 4b 65 79 53 74 72 69 6e 67 00 00 42 6c 6f 63 6b 45 6e 63 72 79 70 74 00 00 00 00 42 6c 6f 63 6b 44 65 63 72 79 70 74 } //10
		$a_01_1 = {42 65 67 69 6e 44 6f 77 6e 4c 6f 61 64 00 00 00 42 65 67 69 6e 53 65 74 75 70 } //10
		$a_01_2 = {54 00 67 00 77 00 61 00 6e 00 67 00 } //10 Tgwang
		$a_01_3 = {41 00 6c 00 6c 00 55 00 73 00 65 00 72 00 53 00 70 00 72 00 6f 00 46 00 69 00 6c 00 65 00 } //10 AllUserSproFile
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //5 CreateToolhelp32Snapshot
		$a_01_5 = {52 65 67 69 73 74 65 72 53 68 65 6c 6c 48 6f 6f 6b 57 69 6e 64 6f 77 } //5 RegisterShellHookWindow
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_00_7 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //1 Microsoft Corporation
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1) >=51
 
}