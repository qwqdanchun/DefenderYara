
rule TrojanDropper_Win32_VB_DW{
	meta:
		description = "TrojanDropper:Win32/VB.DW,SIGNATURE_TYPE_PEHSTR_EXT,3e 00 3d 00 08 00 00 0a 00 "
		
	strings :
		$a_02_0 = {8b 02 89 45 90 01 01 c7 45 ac 90 01 02 40 00 c7 45 a4 08 00 00 00 c7 45 bc 65 00 00 00 c7 45 b4 02 00 00 00 8d 4d c8 51 b8 10 00 00 00 e8 90 01 02 ff ff 90 00 } //0a 00 
		$a_00_1 = {5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //0a 00  \SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_2 = {57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //0a 00  Wscript.Shell
		$a_01_3 = {43 00 55 00 53 00 54 00 4f 00 4d 00 } //0a 00  CUSTOM
		$a_00_4 = {5f 5f 76 62 61 46 69 6c 65 4f 70 65 6e } //0a 00  __vbaFileOpen
		$a_00_5 = {43 6f 70 79 46 69 6c 65 41 } //01 00  CopyFileA
		$a_02_6 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_7 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}