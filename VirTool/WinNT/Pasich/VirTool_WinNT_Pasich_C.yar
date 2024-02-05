
rule VirTool_WinNT_Pasich_C{
	meta:
		description = "VirTool:WinNT/Pasich.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 04 00 "
		
	strings :
		$a_01_0 = {68 4f 63 70 70 ff 75 08 6a 00 ff 15 } //04 00 
		$a_01_1 = {68 4f 63 50 45 6a 0c 6a 00 ff 15 } //01 00 
		$a_01_2 = {0f 22 c0 fb 8b 45 08 8b 00 c6 00 e9 8b 45 08 8b 4d 08 8b 40 04 2b 01 83 e8 05 } //01 00 
		$a_01_3 = {c1 c2 03 32 10 40 80 38 00 75 f5 } //01 00 
		$a_01_4 = {63 75 72 72 65 6e 74 5f 69 70 } //01 00 
		$a_01_5 = {66 69 72 73 74 5f 64 6f 77 6e 6c 6f 61 64 5f 64 65 6c 61 79 } //01 00 
		$a_01_6 = {6c 61 73 74 5f 64 6f 77 6e 6c 6f 61 64 5f 74 69 6d 65 } //00 00 
	condition:
		any of ($a_*)
 
}