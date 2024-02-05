
rule VirTool_Win32_Gosam_A_MTB{
	meta:
		description = "VirTool:Win32/Gosam.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 8b ec 83 c4 f4 6a 0c 8d 90 01 02 50 e8 90 01 04 c7 45 f4 0c 00 00 00 c7 45 fc 01 00 00 00 6a 00 8d 90 01 02 50 68 4c 37 40 00 68 40 37 40 00 e8 90 00 } //01 00 
		$a_03_1 = {55 8b ec 83 c4 f8 c7 45 fc 00 00 00 00 c7 45 f8 00 00 00 00 33 c9 90 01 02 51 6a 00 8d 90 01 02 50 6a 00 6a 00 6a 00 ff 35 40 37 40 00 e8 90 01 04 0b c0 75 04 eb 27 eb 0f 83 7d fc 00 74 09 8b 45 f8 03 45 fc 89 45 f8 90 00 } //01 00 
		$a_03_2 = {c7 45 f8 00 00 00 00 8b 4d 0c 41 51 51 e8 90 01 04 89 45 f8 59 51 ff 75 f8 e8 90 01 04 6a 00 8d 90 01 02 50 ff 75 0c ff 75 f8 ff 35 40 37 40 00 e8 90 01 04 0b c0 90 00 } //01 00 
		$a_03_3 = {8b ec 6a 04 68 00 30 00 00 ff 75 08 6a 00 e8 90 01 04 0b c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}