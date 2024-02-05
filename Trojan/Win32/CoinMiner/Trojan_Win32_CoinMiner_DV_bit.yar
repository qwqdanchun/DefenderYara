
rule Trojan_Win32_CoinMiner_DV_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.DV!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4d 08 b8 4d 5a 00 00 66 39 01 74 13 68 c1 00 00 00 ff 15 90 01 03 00 5e 33 c0 5b 8b e5 5d c3 8b 51 3c 8d 82 f8 00 00 00 3b d8 72 c3 81 3c 0a 50 45 00 00 8d 1c 0a 75 d4 b8 4c 01 00 00 66 39 43 04 90 00 } //01 00 
		$a_03_1 = {6a 05 ff b6 84 00 00 00 8b 78 0c 57 89 7d e0 ff 15 90 01 03 00 50 57 ff 15 90 01 03 00 8b f8 89 45 e4 85 ff 74 0c 57 ff 15 90 01 03 00 90 00 } //01 00 
		$a_03_2 = {ff 73 30 8b 46 fc 6a 04 68 00 10 00 00 03 c2 51 50 8b 43 1c ff d0 83 c4 14 85 c0 74 4a ff 36 8b 46 04 8b 7e fc 03 45 08 03 7d 14 50 57 e8 90 01 03 00 89 7e f8 8b 55 14 83 c4 0c 8b 03 83 c6 28 8b 7d fc 47 89 7d fc 0f b7 40 06 3b f8 0f 8c 5e ff ff ff 90 00 } //01 00 
		$a_01_3 = {89 77 04 0f b7 43 16 c1 e8 0d 83 e0 01 89 47 14 8b 45 10 89 47 1c 8b 45 14 89 47 20 8b 45 18 89 47 24 8b 45 1c 89 47 28 8b 45 20 89 47 2c 8b 45 24 89 47 30 8b 45 dc 89 47 38 ff 73 54 ff 75 0c e8 } //01 00 
		$a_01_4 = {8b 45 08 85 c0 74 16 83 78 14 00 75 10 8b 48 34 85 c9 74 09 83 78 18 00 74 03 5d ff e1 83 c8 ff 5d c3 } //00 00 
	condition:
		any of ($a_*)
 
}