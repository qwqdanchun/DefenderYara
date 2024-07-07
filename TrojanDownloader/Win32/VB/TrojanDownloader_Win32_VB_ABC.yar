
rule TrojanDownloader_Win32_VB_ABC{
	meta:
		description = "TrojanDownloader:Win32/VB.ABC,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {44 00 3a 00 5c 00 30 00 31 00 2e 00 20 00 44 00 6f 00 73 00 69 00 6e 00 20 00 53 00 } //1 D:\01. Dosin S
		$a_00_1 = {6d 00 6f 00 6e 00 74 00 6d 00 70 00 2e 00 65 00 78 00 65 00 } //1 montmp.exe
		$a_02_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 30 00 78 00 64 00 65 00 2e 00 30 00 78 00 37 00 61 00 2e 00 30 00 78 00 61 00 33 00 2e 00 30 00 78 00 31 00 39 00 2f 00 6c 00 6f 00 67 00 2f 00 63 00 76 00 61 00 6c 00 90 02 02 2e 00 61 00 73 00 70 00 90 00 } //1
		$a_02_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 30 00 78 00 64 00 65 00 2e 00 30 00 78 00 37 00 61 00 2e 00 30 00 78 00 61 00 33 00 2e 00 30 00 78 00 31 00 39 00 2f 00 6c 00 6f 00 67 00 2f 00 63 00 76 00 65 00 72 00 90 02 02 2e 00 61 00 73 00 70 00 90 00 } //1
		$a_00_4 = {30 00 78 00 64 00 65 00 2e 00 30 00 78 00 37 00 61 00 2e 00 30 00 78 00 61 00 33 00 2e 00 30 00 78 00 31 00 39 00 } //1 0xde.0x7a.0xa3.0x19
		$a_00_5 = {6d 00 73 00 78 00 6d 00 6c 00 32 00 2e 00 78 00 6d 00 6c 00 68 00 74 00 74 00 70 00 } //1 msxml2.xmlhttp
		$a_00_6 = {43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 4e 00 41 00 4d 00 45 00 } //1 COMPUTERNAME
		$a_00_7 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 2d 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run-
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}