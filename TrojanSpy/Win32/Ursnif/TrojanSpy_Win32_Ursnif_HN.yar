
rule TrojanSpy_Win32_Ursnif_HN{
	meta:
		description = "TrojanSpy:Win32/Ursnif.HN,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 d1 8a 4d 90 01 01 33 d6 d3 ca 8b 4d 90 01 01 89 17 83 c7 04 ff 4d 90 01 01 75 90 00 } //01 00 
		$a_01_1 = {3d 76 8a 38 a0 74 46 3d ee 13 e3 54 74 3f 3d 01 d4 70 ab 74 38 3d 76 4a 31 9a 74 31 3d 91 26 fd aa 75 35 } //01 00 
		$a_01_2 = {0f b7 56 04 66 81 fa 64 86 8d 86 b0 00 00 00 74 06 8d 86 a0 00 00 00 8b 08 85 c9 } //01 00 
		$a_03_3 = {53 c7 45 f8 eb fe cc cc 89 90 01 01 fc 90 00 } //01 00 
		$a_03_4 = {bb 65 23 00 00 53 e8 90 01 04 8b f0 85 f6 74 4b 90 00 } //01 00 
		$a_01_5 = {81 45 dc 00 c0 69 2a ff 75 e8 81 55 e0 c9 00 00 00 } //01 00 
		$a_03_6 = {66 3d 4a 31 74 90 01 01 0f b7 46 14 83 c6 14 66 85 c0 75 90 01 01 66 81 3e 4a 31 90 00 } //01 00 
		$a_01_7 = {8b 0a 83 c1 01 81 e1 fe 00 00 00 ff 34 ca e2 fb } //01 00 
		$a_01_8 = {53 56 8b d9 c7 45 e8 eb fe cc cc 57 32 c0 8d bd 18 fd ff ff b9 cc 02 00 00 33 f6 f3 aa } //01 00 
		$a_03_9 = {68 c8 02 00 00 57 50 89 bd 18 fd ff ff e8 90 01 04 8b 5d 08 57 c7 45 f4 eb fe cc cc 8b 03 ff 73 08 89 45 fc a1 90 00 } //01 00 
		$a_01_10 = {33 c6 33 44 24 10 8b f1 8a cb c0 e1 03 d3 c8 83 f3 01 89 02 83 c2 04 ff 4c 24 0c 75 c8 } //01 00 
		$a_01_11 = {66 81 f9 4a 32 74 12 83 c6 10 0f b7 0e 66 85 c9 75 ee 66 81 3e 4a 32 } //00 00 
	condition:
		any of ($a_*)
 
}