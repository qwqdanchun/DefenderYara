
rule VirTool_WinNT_FURootkit_gen_A{
	meta:
		description = "VirTool:WinNT/FURootkit.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,6f 00 0b 00 05 00 00 64 00 "
		
	strings :
		$a_03_0 = {c7 04 30 e7 03 00 00 e9 90 01 04 8b 45 90 01 01 83 f8 1a 0f 82 90 01 04 8b 5d 90 01 01 3b de 0f 84 90 01 04 6a 1a 33 d2 59 f7 f1 83 f8 01 89 45 90 00 } //64 00 
		$a_02_1 = {c7 04 18 e7 03 00 00 e9 90 01 04 83 7d 1c 1a 72 19 8b 75 18 85 f6 74 12 8b 45 1c 6a 1a 33 d2 59 f7 f1 83 f8 01 89 45 90 00 } //0a 00 
		$a_02_2 = {68 7b 2a 00 00 90 02 04 50 6a 00 56 ff 15 90 01 02 01 00 90 00 } //01 00 
		$a_00_3 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 6d 00 73 00 64 00 69 00 72 00 65 00 63 00 74 00 78 00 } //01 00  \Device\msdirectx
		$a_00_4 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 62 00 62 00 62 00 73 00 79 00 73 00 33 00 32 00 64 00 } //00 00  \Device\bbbsys32d
	condition:
		any of ($a_*)
 
}