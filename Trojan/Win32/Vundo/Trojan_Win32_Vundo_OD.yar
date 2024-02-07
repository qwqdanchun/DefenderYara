
rule Trojan_Win32_Vundo_OD{
	meta:
		description = "Trojan:Win32/Vundo.OD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 04 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 6a 08 59 6b c0 0d 05 90 01 04 49 0f c8 75 90 01 01 6a 07 59 33 d2 6a 1a 5f f7 f7 80 c2 61 88 16 46 49 75 90 01 01 5f c7 06 2e 64 6c 6c 90 00 } //02 00 
		$a_01_1 = {63 3a 5c 00 66 6c 61 73 68 5f 70 6c 61 79 65 72 5f 75 70 64 61 74 65 2e 65 78 65 00 72 75 6e 61 73 } //02 00 
		$a_01_2 = {2f 63 68 6b 00 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 64 6f 77 73 } //01 00 
		$a_01_3 = {41 70 70 49 6e 69 74 5f 44 4c 4c 73 } //01 00  AppInit_DLLs
		$a_01_4 = {4c 6f 61 64 41 70 70 49 6e 69 74 5f 44 4c 4c 73 } //00 00  LoadAppInit_DLLs
	condition:
		any of ($a_*)
 
}