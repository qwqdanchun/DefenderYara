
rule Trojan_Win32_Ursnif_AB_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b d0 2b d6 83 ea 06 0f b7 fa 0f b7 c9 81 c3 90 01 04 ba 06 00 00 00 2b d1 89 5d 00 03 c2 83 c5 04 ff 4c 24 10 0f 85 90 01 02 ff ff 90 00 } //01 00 
		$a_02_1 = {8b 44 24 18 8b 00 a3 90 01 04 0f b7 df b8 a3 ff ff ff 2b c6 2b c3 03 d0 89 7c 24 14 81 f9 90 01 04 75 90 01 01 83 3d 90 01 04 00 90 00 } //01 00 
		$a_02_2 = {13 d3 89 54 24 18 2b 0d 90 01 03 00 a1 90 01 03 00 8b 5d 00 0f b7 d7 2b c2 83 e9 06 83 e8 09 66 89 0d 90 00 } //01 00 
		$a_02_3 = {8b 54 24 18 05 90 0a 10 00 a1 90 01 04 8b 54 24 18 05 90 01 04 89 02 0f b7 d5 a3 90 01 04 8d 43 08 89 44 24 10 39 15 90 01 04 72 90 02 20 83 44 24 18 04 83 6c 24 1c 01 0f 85 90 01 02 ff ff 90 00 } //00 00 
		$a_00_4 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}