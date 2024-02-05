
rule Trojan_Win32_Ursnif_RAV_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.RAV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f b7 c7 8d 53 03 83 c1 04 03 d0 ff 4c 24 1c 89 4c 24 14 74 90 01 01 a1 90 01 04 8b 7c 24 20 e9 90 00 } //01 00 
		$a_02_1 = {81 c7 38 51 9b 01 8d 34 42 03 c6 89 3b 8b 35 90 01 04 3b f2 89 3d 90 01 04 73 90 00 } //01 00 
		$a_02_2 = {8b 74 24 14 81 c7 70 b6 37 01 89 3e 83 c6 04 83 6c 24 90 01 02 b1 90 01 01 89 74 24 90 01 01 0f 85 90 00 } //01 00 
		$a_02_3 = {8b 6c 24 14 8b d1 2b 15 90 01 04 83 c5 04 83 ea 03 83 6c 24 18 01 0f b7 d2 89 6c 24 14 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}