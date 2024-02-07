
rule Trojan_Win32_Ursnif_AX_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {8b 2f 8d 41 90 01 01 0f b7 c8 b8 90 01 04 69 f1 90 01 04 03 f2 f7 e6 c1 ea 90 00 } //02 00 
		$a_02_1 = {8b c3 83 c6 90 01 01 2b c1 03 f0 6b c1 90 01 01 83 c6 90 01 01 81 c5 90 01 04 89 2d 90 01 04 89 2f 03 c6 69 f0 90 01 04 b8 90 01 04 03 f1 f7 e6 c1 ea 90 00 } //01 00 
		$a_02_2 = {8b c3 83 c6 90 01 01 2b c1 03 f0 2b 0d 90 01 04 83 c7 04 8b 15 90 01 04 83 c1 fe 03 ce 90 00 } //00 00 
		$a_00_3 = {78 5a } //01 00  xZ
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ursnif_AX_MTB_2{
	meta:
		description = "Trojan:Win32/Ursnif.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {8b c7 2b c2 8d 54 18 e1 8d 04 2a 8d 7c 07 49 89 3d 90 01 04 0f b6 05 90 01 04 3b c6 72 90 01 01 8a 44 24 14 2b f5 03 de 28 05 90 01 04 8d 74 2b 90 01 01 81 05 90 01 08 8b 44 24 18 8b 0d 90 01 04 83 44 24 10 90 01 01 81 7c 24 10 90 01 04 89 08 8d 44 1f 07 0f b7 f8 0f 82 90 00 } //01 00 
		$a_02_1 = {29 7c 24 18 c7 44 24 14 90 01 04 89 7c 24 10 ff 4c 24 14 8b 74 24 14 8b 6c 24 10 8b 5c 24 18 8a 1c 2b 2b f1 83 ee 90 01 01 ff 44 24 10 89 35 90 01 04 2b f1 88 5d 00 8d 1c 10 83 ee 90 01 01 03 cb 83 7c 24 14 90 01 01 75 ca 90 00 } //02 00 
		$a_02_2 = {8b c8 8b c2 8b 54 24 10 03 ca 89 4c 24 0c 8b 4c 24 18 83 d0 90 01 01 ff 4c 24 1c 89 44 24 14 0f b7 05 90 01 04 3b c2 8b 44 24 0c 0f 87 90 01 04 8d 4a 90 01 01 66 89 35 90 01 04 03 ce 8d 72 34 03 f1 89 35 90 01 04 e9 90 00 } //01 00 
		$a_02_3 = {57 88 01 41 89 4c 24 1c e8 90 01 04 8b f8 0f b7 05 90 01 04 03 fe 83 d2 90 01 01 3b c6 72 90 01 01 a1 90 01 04 83 c0 90 01 01 03 c6 66 83 c3 90 01 01 a3 90 01 04 8d 34 85 e8 ff ff ff 89 35 90 01 04 8b 44 24 18 8b 4c 24 14 85 c0 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}