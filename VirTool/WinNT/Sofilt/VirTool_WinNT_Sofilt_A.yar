
rule VirTool_WinNT_Sofilt_A{
	meta:
		description = "VirTool:WinNT/Sofilt.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_08_0 = {43 00 6d 00 52 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 43 00 61 00 6c 00 6c 00 62 00 61 00 63 00 6b 00 00 00 } //01 00 
		$a_08_1 = {5c 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 46 00 69 00 6c 00 74 00 65 00 72 00 73 00 5c 00 44 00 25 00 58 00 25 00 58 00 43 00 44 00 4f 00 00 00 } //01 00 
		$a_03_2 = {89 45 04 8d 45 04 50 e8 90 01 04 85 c0 74 05 8b 45 04 eb 3a ff 75 24 ff 75 20 ff 75 1c ff 75 18 ff 75 14 ff 75 10 e8 00 00 00 00 58 e8 06 00 00 00 50 e8 1e 00 00 00 e8 00 00 00 00 58 83 c0 05 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}