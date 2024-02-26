
rule Trojan_Win32_SmokeLoader_JAH_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.JAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b d6 d3 ea 03 c6 89 45 ec c7 05 90 01 04 ee 3d ea f4 03 55 e0 8b 45 ec 31 45 fc 33 55 fc 81 3d 90 01 04 13 02 00 00 89 55 ec 75 90 00 } //01 00 
		$a_03_1 = {8b f0 d3 ee 03 75 d4 81 3d 90 01 04 21 01 00 00 75 0a 53 ff 15 90 01 04 8b 45 f8 31 75 fc 8b 4d fc 29 4d e8 81 45 f0 90 01 04 ff 4d e4 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}