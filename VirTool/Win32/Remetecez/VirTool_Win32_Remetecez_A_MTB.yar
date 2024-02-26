
rule VirTool_Win32_Remetecez_A_MTB{
	meta:
		description = "VirTool:Win32/Remetecez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {51 6a 5a 68 90 01 04 50 56 90 01 06 85 c0 8b 45 f8 90 01 06 83 f8 5a 90 01 09 c7 45 f8 00 00 00 00 50 8b 45 e8 6a 71 68 18 50 40 00 83 c0 5a 90 00 } //01 00 
		$a_03_1 = {c6 00 00 8d 90 01 02 83 e9 01 90 01 06 50 90 01 04 50 51 51 6a 04 51 51 51 90 01 07 50 51 90 01 06 85 c0 90 00 } //01 00 
		$a_03_2 = {51 6a 10 50 57 56 90 01 06 8b 3d 14 30 40 00 85 c0 90 01 02 83 7d f8 10 90 01 02 8b 95 0c fd ff ff 8b 7d f4 c7 85 08 fd ff ff 01 00 00 00 8b 02 8b 4a 04 a3 90 01 04 8b 45 f0 89 0d 90 01 04 8b 0d 90 01 04 89 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}