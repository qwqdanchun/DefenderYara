
rule VirTool_WinNT_Zuten_C{
	meta:
		description = "VirTool:WinNT/Zuten.C,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 02 00 "
		
	strings :
		$a_00_0 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //02 00  KeServiceDescriptorTable
		$a_00_1 = {5c 6f 62 6a 66 72 65 5c 69 33 38 36 5c 68 6f 6f 6b 64 6c 6c 2e 70 64 62 } //02 00  \objfre\i386\hookdll.pdb
		$a_00_2 = {00 67 6e 61 69 78 6e 61 75 68 71 71 00 } //02 00 
		$a_00_3 = {00 6e 61 69 78 75 68 7a 00 } //01 00 
		$a_00_4 = {00 6e 69 6c 75 77 00 } //02 00 
		$a_00_5 = {8b c0 8b c0 8b c0 90 90 90 90 } //02 00 
		$a_02_6 = {8b 75 10 6a 05 56 e8 90 01 02 ff ff 2b de 83 c3 0b c6 06 e9 89 5e 01 8b 4d 2c ff 15 90 00 } //02 00 
		$a_02_7 = {60 e8 00 00 00 00 5f 81 e7 00 ff ff ff 8d 77 90 01 01 eb 09 80 3e 90 01 01 75 03 80 36 90 01 01 46 80 3e 00 75 f2 8d 77 90 01 01 eb 0c 56 ff 17 eb 01 46 80 3e 00 75 fa 46 66 83 3e 00 75 ee 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}