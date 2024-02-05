
rule Trojan_Win32_Fareit_VC_MTB{
	meta:
		description = "Trojan:Win32/Fareit.VC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {8b 45 f8 83 c0 90 01 01 89 45 f8 8b 4d f8 3b 4d f4 73 90 01 01 ff 15 90 01 04 6a 90 01 01 ff 15 90 01 04 8b 55 10 52 8b 45 f8 d1 e0 8b 4d fc 8d 14 81 52 e8 90 01 04 83 c4 90 01 01 eb 90 00 } //01 00 
		$a_02_1 = {8b 4d dc c1 e1 90 01 01 03 4d e8 8b 55 dc 03 55 f0 33 ca 8b 45 dc c1 e8 90 01 01 03 45 ec 33 c8 8b 55 f4 2b d1 89 55 f4 90 00 } //01 00 
		$a_02_2 = {8b 45 f4 c1 e0 90 01 01 03 45 f8 8b 4d f4 03 4d f0 33 c1 8b 55 f4 c1 ea 90 01 01 03 55 e0 33 c2 8b 4d dc 2b c8 89 4d dc 8b 55 e4 83 c2 90 01 01 8b 45 f0 2b c2 89 45 f0 e9 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}