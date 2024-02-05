
rule VirTool_Win64_Shelpluk_A_MTB{
	meta:
		description = "VirTool:Win64/Shelpluk.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {31 14 99 48 ff c3 48 3b d8 90 01 02 48 8b 5c 24 30 48 8d 90 01 06 49 3b c1 90 01 02 0f 1f 00 30 14 08 48 ff c0 49 3b c1 90 00 } //01 00 
		$a_03_1 = {48 89 45 0f 48 89 75 17 4c 8b 7d ff 4c 2b fb 41 b9 04 00 00 00 41 b8 00 10 00 00 49 8d 90 01 02 33 c9 ff 15 90 01 04 4c 8b f0 48 85 c0 90 00 } //01 00 
		$a_03_2 = {48 89 5d ff 48 89 74 24 28 89 74 24 20 4d 8b ce 4c 8d 90 01 05 33 d2 33 c9 ff 15 90 01 04 48 8b f0 48 89 45 17 48 85 c0 90 00 } //01 00 
		$a_03_3 = {41 b8 40 00 00 00 8b d0 48 8b cf 8b f0 ff 15 90 01 04 85 c0 90 01 02 48 8b 13 44 8b c6 48 8b cf e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}