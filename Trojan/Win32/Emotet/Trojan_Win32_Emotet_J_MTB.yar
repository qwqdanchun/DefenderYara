
rule Trojan_Win32_Emotet_J_MTB{
	meta:
		description = "Trojan:Win32/Emotet.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {40 2e 65 68 5f 66 72 61 6d } //01 00  @.eh_fram
		$a_00_1 = {53 65 74 55 6e 68 61 6e 64 6c 65 64 45 78 63 65 70 74 69 6f 6e 46 69 6c 74 65 72 } //01 00  SetUnhandledExceptionFilter
		$a_00_2 = {c7 44 24 0c 40 00 00 00 c7 44 24 08 00 10 00 00 89 44 24 04 c7 04 24 00 00 00 00 } //01 00 
		$a_00_3 = {c7 44 24 0c 40 00 00 00 c7 44 24 08 00 10 00 00 c7 04 24 00 00 00 00 89 44 24 04 } //01 00 
		$a_00_4 = {c7 44 24 0c 00 00 00 00 c7 44 24 08 01 00 00 00 c7 44 24 04 00 00 00 00 89 44 24 18 } //01 00 
		$a_00_5 = {c7 44 24 0c 00 00 00 00 c7 44 24 08 01 00 00 00 c7 44 24 04 00 00 00 00 89 04 24 } //01 00 
		$a_02_6 = {9c 9c 58 89 c2 35 00 00 20 00 50 9d 9c 58 9d 31 d0 a9 00 00 20 00 0f 84 90 01 01 00 00 00 53 31 c0 0f a2 85 c0 0f 84 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_J_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 12 00 00 01 00 "
		
	strings :
		$a_00_0 = {6a 40 68 00 10 00 00 8d 4d 0c 51 6a 00 8d 55 c0 52 ff 55 d0 50 ff 55 cc } //01 00 
		$a_00_1 = {6a 40 68 00 10 00 00 8d 55 0c 52 6a 00 8d 45 bc 50 ff 55 cc 50 ff 55 c8 } //01 00 
		$a_00_2 = {6a 40 68 00 10 00 00 50 8d 45 f8 53 50 ff 55 c0 50 ff 55 bc } //01 00 
		$a_00_3 = {6a 40 68 00 10 00 00 8d 54 24 64 52 6a 00 8d 44 24 24 50 ff d5 50 ff 54 24 38 } //01 00 
		$a_00_4 = {6a 40 8d 45 0c 68 00 10 00 00 50 33 f6 8d 45 f8 56 50 ff 55 c0 50 ff 55 bc } //01 00 
		$a_02_5 = {ff 55 d0 50 ff 55 cc 90 0a 1f 00 8b 0d 90 01 03 00 51 8b 15 90 01 03 00 52 8d 45 0c 50 6a 00 8d 4d c0 51 ff 55 d0 50 ff 55 cc 90 00 } //01 00 
		$a_02_6 = {ff 75 0c ff 75 08 ff 75 f8 ff 55 d8 90 0a 2f 00 83 c4 40 ff 35 90 01 03 00 8d 45 f0 ff 35 90 01 03 00 50 53 8d 45 f8 50 ff 55 bc 50 ff 55 b8 ff 75 0c ff 75 08 ff 75 f8 ff 55 d8 90 00 } //01 00 
		$a_02_7 = {ff 55 b8 ff 75 0c ff 75 08 ff 75 f8 ff 55 d8 90 0a 2f 00 ff 35 90 01 03 00 8d 45 f0 ff 35 90 01 03 00 50 8d 45 f8 56 50 ff 55 bc 50 ff 55 b8 ff 75 0c ff 75 08 ff 75 f8 ff 55 d8 90 00 } //01 00 
		$a_00_8 = {8b 45 0c 50 8d 4d 0c 51 8b 55 c0 52 6a 00 6a 01 6a 00 8b 45 c4 50 ff 55 f0 85 c0 75 04 33 c0 eb 03 8b 45 c0 8b e5 5d c3 } //01 00 
		$a_00_9 = {8b 55 0c 52 8d 45 0c 50 8b 4d bc 51 6a 00 6a 01 6a 00 8b 55 fc 52 ff 55 ec 85 c0 75 04 33 c0 eb 03 8b 45 bc 8b e5 5d c3 } //01 00 
		$a_00_10 = {8d 45 0c ff 75 0c 50 ff 75 f8 53 6a 01 53 ff 75 f0 ff 55 e0 f7 d8 1b c0 23 45 f8 5f 5e 5b c9 c3 } //01 00 
		$a_00_11 = {8b 44 24 5c 8b 54 24 14 50 8b 44 24 20 8d 4c 24 60 51 52 6a 00 6a 01 6a 00 50 ff 54 24 60 5f f7 d8 5e 1b c0 23 44 24 0c 5d 5b 83 c4 44 c3 } //01 00 
		$a_00_12 = {83 c4 0c 8d 45 0c ff 75 0c 50 ff 75 f8 56 6a 01 56 ff 75 f0 ff 55 e0 f7 d8 1b c0 23 45 f8 5f 5e 5b c9 c3 } //01 00 
		$a_00_13 = {8b 55 0c 52 8d 45 0c 50 8b 4d c0 51 6a 00 6a 01 6a 00 8b 55 c4 52 ff 55 f0 85 c0 75 04 33 c0 eb 03 8b 45 c0 8b e5 5d c3 } //01 00 
		$a_00_14 = {83 c4 0c ff 75 0c 8d 45 0c 50 ff 75 f8 53 6a 01 53 ff 75 ec ff 55 dc f7 d8 1b c0 23 45 f8 5f 5e 5b c9 c3 } //01 00 
		$a_00_15 = {ff 55 d8 83 c4 0c 8d 45 0c ff 75 0c 50 ff 75 f8 56 53 56 ff 75 ec ff 55 dc f7 d8 1b c0 23 45 f8 5f 5e 5b c9 c3 } //01 00 
		$a_00_16 = {53 65 74 55 6e 68 61 6e 64 6c 65 64 45 78 63 65 70 74 69 6f 6e 46 69 6c 74 65 72 } //01 00  SetUnhandledExceptionFilter
		$a_00_17 = {5f 65 78 63 65 70 74 5f 68 61 6e 64 6c 65 72 } //00 00  _except_handler
	condition:
		any of ($a_*)
 
}