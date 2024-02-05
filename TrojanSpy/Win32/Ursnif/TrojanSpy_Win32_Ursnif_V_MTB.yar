
rule TrojanSpy_Win32_Ursnif_V_MTB{
	meta:
		description = "TrojanSpy:Win32/Ursnif.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {0f b6 35 40 00 42 00 81 fe 90 01 04 75 90 01 01 0f b6 05 90 01 04 03 c8 b8 90 01 04 8d b4 42 46 5b 01 00 0f b7 d3 03 d5 03 f1 81 fa 90 01 04 75 90 00 } //02 00 
		$a_02_1 = {8b 44 24 14 81 c5 90 01 04 89 28 66 0f b6 3d 42 00 42 00 0f b7 f3 8d 04 36 2b c1 83 e8 90 01 01 66 3b 7c 24 10 73 90 01 01 8b fa 2b fe 88 15 41 00 42 00 8d 44 38 5e 8d 94 32 17 c3 ff ff 8b 35 50 00 42 00 83 44 24 14 90 01 01 83 6c 24 1c 90 01 01 8d 74 06 09 0f b7 de 89 5c 24 10 0f 85 90 00 } //01 00 
		$a_00_2 = {63 3a 5c 45 76 65 72 79 5c 62 6c 61 63 6b 5c 53 75 67 67 65 73 74 5c 4f 6e 63 65 5c 53 6f 75 6e 64 69 72 6f 6e 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}