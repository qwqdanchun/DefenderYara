
rule VirTool_Win32_Lasdumpz_A_MTB{
	meta:
		description = "VirTool:Win32/Lasdumpz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 4c 24 60 48 8d 90 01 02 4c 89 74 24 58 45 33 c9 4c 89 74 24 50 45 33 c0 4c 89 74 24 48 33 d2 4c 89 74 24 40 4c 89 74 24 38 4c 89 74 24 30 48 89 44 24 28 48 8d 90 01 02 48 89 44 24 20 ff 15 90 01 04 85 c0 0f 85 90 01 04 8b 55 98 85 d2 0f 84 90 01 04 81 7d 9c ff 00 00 00 90 00 } //01 00 
		$a_81_1 = {53 45 43 55 52 49 54 59 5c 50 6f 6c 69 63 79 5c 53 65 63 72 65 74 73 } //01 00  SECURITY\Policy\Secrets
		$a_81_2 = {47 54 5f 5f 44 65 63 72 79 70 74 } //01 00  GT__Decrypt
		$a_03_3 = {48 33 c4 48 89 85 20 02 00 00 45 33 f6 ba 08 02 00 00 44 89 75 98 41 8d 90 01 02 ff 15 90 01 04 48 8b d8 48 85 c0 0f 84 90 01 04 48 8d 90 01 03 41 b9 19 00 02 00 45 33 c0 48 89 44 24 20 48 8d 90 01 05 48 c7 c1 02 00 00 80 ff 15 90 01 04 85 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}