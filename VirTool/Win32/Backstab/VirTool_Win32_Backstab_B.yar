
rule VirTool_Win32_Backstab_B{
	meta:
		description = "VirTool:Win32/Backstab.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6a 08 c7 44 24 38 00 00 00 00 ff 90 01 01 50 ff 90 01 03 40 00 85 c0 90 01 06 89 74 24 3c 50 6a 04 90 01 04 c7 44 24 50 04 00 00 00 50 6a 14 ff 74 24 44 ff 90 01 03 40 00 85 c0 90 00 } //01 00 
		$a_03_1 = {6a 00 6a 10 90 01 04 50 6a 00 ff 74 24 48 ff 90 01 03 40 00 ff 74 24 34 85 c0 a1 74 40 40 00 90 01 02 ff 90 01 01 be 04 47 40 00 90 00 } //01 00 
		$a_03_2 = {bf 01 00 00 00 89 7c 24 18 ff 90 01 03 40 00 83 c4 04 89 44 24 58 50 6a 00 68 00 10 00 00 ff 90 01 03 40 00 83 f8 ff 90 00 } //01 00 
		$a_03_3 = {33 c4 89 84 24 c4 08 00 00 8b 45 0c 0f 10 90 01 04 00 56 57 89 44 24 1c a1 90 01 03 00 68 f4 01 00 00 89 84 24 c4 04 00 00 90 01 07 6a 00 50 0f 11 84 24 bc 04 00 00 e8 90 01 02 00 00 83 c4 0c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}