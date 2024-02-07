
rule Trojan_Win32_Ursnif_AC_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {0f b6 cb 8b c3 0f b6 d2 0f af d1 a3 90 01 03 00 88 15 90 01 03 00 8b 0d 90 01 03 00 8b 74 24 10 83 c1 c4 03 cb 89 4c 24 14 8b 36 3d 90 01 04 75 68 90 00 } //01 00 
		$a_02_1 = {8b 54 24 14 8b 12 8a 4c 24 13 02 0d 90 01 04 89 15 90 01 04 0f b6 15 90 01 04 0f b7 fb 8d 54 3a ff 88 0d 90 01 04 89 15 90 01 04 3d 90 01 04 0f 85 90 01 04 85 f6 90 00 } //01 00 
		$a_02_2 = {39 7c 24 18 76 1a 8d 3c 09 0f b6 d2 2b fb 0f b6 cb 0f af d1 89 3d 90 01 03 00 88 15 90 01 03 00 8b 4c 24 10 81 c6 90 01 04 89 31 0f b6 0d 90 00 } //01 00 
		$a_02_3 = {99 8b f2 8b 2d 90 01 04 8b 54 24 14 81 c5 90 01 04 89 2a 89 2d 90 01 04 8d 2c 07 83 c2 04 ff 4c 24 18 8d 7c 6f 54 89 3d 90 01 04 89 54 24 14 0f 85 90 01 02 ff ff 90 00 } //00 00 
		$a_00_4 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}